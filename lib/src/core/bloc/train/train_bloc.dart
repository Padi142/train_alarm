import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_geofence/geofence.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:train_alarm/src/core/bloc/train/train_state.dart';
import 'package:train_alarm/src/core/models/alarm_model.dart';
import 'package:train_alarm/src/core/provider/alarm_provider.dart';
import 'package:train_alarm/src/ui/components/toast_alert.dart';
import 'package:train_alarm/src/ui/components/toast_error.dart';

part 'train_event.dart';

class TrainBloc extends Bloc<TrainEvent, TrainState> {
  TrainBloc()
      : super(const TrainState.partial(5, LatLng(50.0830608, 14.4365497))) {
    on<Initial>(_onInitial);
    on<SetAlarmEvent>(_onSetAlarm);
    on<SetRadius>(_onSetRadius);
    on<SetKoordinaty>(_onSetKoordinaty);
    on<RemoveAll>(_onRemoveAll);
  }
  AlarmProvider alarmProvider = AlarmProvider();
  _onInitial(Initial event, Emitter<TrainState> emit) async {
    Geofence.initialize();
    Geofence.requestPermissions();

    await Permission.location.request();
    await Permission.locationAlways.request();

    FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
        FlutterLocalNotificationsPlugin();
    IOSInitializationSettings iOSInitializationSettings =
        const IOSInitializationSettings();
    AndroidInitializationSettings androidInitializationSettings =
        const AndroidInitializationSettings("launcher_icon");

    InitializationSettings initializationSettings = InitializationSettings(
        iOS: iOSInitializationSettings, android: androidInitializationSettings);
    flutterLocalNotificationsPlugin.initialize(initializationSettings);
  }

  _onSetAlarm(SetAlarmEvent event, Emitter<TrainState> emit) {
    try {
      Geofence.getCurrentLocation().then((coordinate) {
        print(
            "Your latitude is ${coordinate!.latitude} and longitude ${coordinate.longitude}");
      });

      Geolocation geolocation = Geolocation(
          latitude: event.alarm.koordinaty.latitude,
          longitude: event.alarm.koordinaty.longitude,
          radius: (event.alarm.radius * 1000).toDouble(),
          id: "stanicia");

      Geofence.addGeolocation(geolocation, GeolocationEvent.entry)
          .then((onValue) {
        print("Georegion added");
      }).catchError((error) {
        print("failed with $error");
      });
      Geofence.startListening(GeolocationEvent.entry, (entry) async {
        await alarmProvider.setOffAlarm();
        await alarmProvider.showNotification();
        print("Vstoupir do ${entry.id}");
      });
      ScaffoldMessenger.of(event.context)
          .showSnackBar(SnackAlert(event.context, "Alarm nastaven jooo"));
    } catch (err) {
      ScaffoldMessenger.of(event.context).showSnackBar(
          SnackError(event.context, "Error pri nastavovani :///"));
    }
  }

  _onRemoveAll(RemoveAll event, Emitter<TrainState> emit) async {
    await Geofence.removeAllGeolocations();
  }

  _onSetRadius(SetRadius event, Emitter<TrainState> emit) {
    state.maybeWhen(
        orElse: () {},
        partial: ((radius, koordinaty) {
          if (event.radius == -0) {
            return;
          } else if (event.radius == 99) {
            return;
          }

          emit(TrainState.partial(event.radius, koordinaty));
        }));
  }

  _onSetKoordinaty(SetKoordinaty event, Emitter<TrainState> emit) {
    state.maybeWhen(
        orElse: () {},
        partial: ((radius, koordinaty) {
          emit(TrainState.partial(radius, event.koordinaty));
        }));
  }
}
