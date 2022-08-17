import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:train_alarm/src/core/bloc/train/train_bloc.dart';
import 'package:train_alarm/src/core/bloc/train/train_state.dart';
import 'package:train_alarm/src/ui/components/map_picker.dart';
import 'package:train_alarm/src/ui/components/radius_picker.dart';

import 'package:train_alarm/constants.dart' as constants;

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPage();
}

class _MainPage extends State<MainPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            title: const Text("Train alarm"),
            backgroundColor: constants.secondaryColor,
          ),
          body: BlocBuilder<TrainBloc, TrainState>(
            builder: (context, state) {
              return state.maybeWhen(partial: ((radius, koordinaty) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
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
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.85,
                      height: 60,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: constants.secondaryColor),
                          onPressed: () {},
                          child: const Text(
                            "Nastavit",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                            ),
                          )),
                    )
                  ],
                );
              }), orElse: () {
                return Container();
              });
            },
          )),
    );
  }
}
