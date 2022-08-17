import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:train_alarm/src/core/bloc/train/train_state.dart';
import 'package:train_alarm/src/core/models/alarm_model.dart';

part 'train_event.dart';

class TrainBloc extends Bloc<TrainEvent, TrainState> {
  TrainBloc()
      : super(const TrainState.partial(5, LatLng(50.0830608, 14.4365497))) {
    on<SetAlarmEvent>(_onSetAlarm);
    on<SetRadius>(_onSetRadius);
  }
  _onSetAlarm(SetAlarmEvent event, Emitter<TrainState> emit) {
    emit(const TrainState.succes());
  }

  _onSetRadius(SetRadius event, Emitter<TrainState> emit) {
    if (event.radius == -1) {
      return;
    } else if (event.radius == 99) {
      return;
    }
    emit(TrainState.partial(event.radius, const LatLng(0, 0)));
  }
}
