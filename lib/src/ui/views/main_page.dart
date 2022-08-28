import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ringtone_player/flutter_ringtone_player.dart';
import 'package:train_alarm/src/core/bloc/train/train_bloc.dart';
import 'package:train_alarm/src/core/bloc/train/train_state.dart';
import 'package:train_alarm/src/core/models/alarm_model.dart';
import 'package:train_alarm/src/ui/components/app_title.dart';
import 'package:train_alarm/src/ui/components/map_picker.dart';
import 'package:train_alarm/src/ui/components/radius_picker.dart';

import 'package:train_alarm/constants.dart' as constants;
import 'package:train_alarm/src/ui/components/toast_alert.dart';
import 'package:train_alarm/src/ui/components/toast_error.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPage();
}

class _MainPage extends State<MainPage> {
  @override
  void initState() {
    BlocProvider.of<TrainBloc>(context).add(const Initial());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(body: BlocBuilder<TrainBloc, TrainState>(
        builder: (context, state) {
          return state.maybeWhen(partial: ((radius, koordinaty) {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const AppTitle(
                    title: "Train alarm",
                  ),
                  RadiusPicker(
                    radius: radius,
                    koordinaty: koordinaty,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: MapPicker(
                      radius: radius,
                      koordinaty: koordinaty,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.15,
                        height: 60,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: constants.secondaryColor),
                            onPressed: () {
                              BlocProvider.of<TrainBloc>(context)
                                  .add(const RemoveAll());
                              ScaffoldMessenger.of(context).showSnackBar(
                                  SnackError(context, "Vsechny alarmy smazar"));
                            },
                            child: const Center(
                              child: Icon(
                                Icons.delete,
                                color: Colors.black,
                              ),
                            )),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.70,
                        height: 60,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: constants.secondaryColor),
                            onPressed: () {
                              BlocProvider.of<TrainBloc>(context)
                                  .add(SetAlarmEvent(
                                      AlarmModel(
                                        radius: radius,
                                        koordinaty: koordinaty,
                                      ),
                                      context));
                            },
                            child: const Text(
                              "Nastavit",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                              ),
                            )),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.70,
                    height: 45,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            primary: constants.secondaryColor),
                        onPressed: () {
                          FlutterRingtonePlayer.stop();
                        },
                        child: const Text(
                          "Zastavit zvonění",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 19,
                          ),
                        )),
                  ),
                ],
              ),
            );
          }), orElse: () {
            return Container();
          });
        },
      )),
    );
  }
}
