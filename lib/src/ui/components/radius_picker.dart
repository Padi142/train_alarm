import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:train_alarm/src/core/bloc/train/train_bloc.dart';

import 'package:train_alarm/constants.dart' as constants;

class RadiusPicker extends StatefulWidget {
  final int radius;
  final LatLng koordinaty;
  const RadiusPicker({required this.radius, required this.koordinaty, Key? key})
      : super(key: key);

  @override
  State<RadiusPicker> createState() => _RadiusPickerState();
}

class _RadiusPickerState extends State<RadiusPicker> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Column(
        children: [
          SizedBox(
            height: 40,
            width: MediaQuery.of(context).size.width * 0.45,
            child: Container(
              decoration: BoxDecoration(
                  color: constants.mainColor,
                  borderRadius: BorderRadius.circular(50)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                      onPressed: () {
                        BlocProvider.of<TrainBloc>(context)
                            .add(SetRadius(widget.radius - 1));
                      },
                      icon: const Icon(Icons.remove)),
                  const SizedBox(
                    width: 15,
                  ),
                  Text(
                    "${widget.radius} km",
                    style: const TextStyle(fontSize: 22),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  IconButton(
                      onPressed: () {
                        BlocProvider.of<TrainBloc>(context)
                            .add(SetRadius(widget.radius + 1));
                      },
                      icon: const Icon(Icons.add)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
