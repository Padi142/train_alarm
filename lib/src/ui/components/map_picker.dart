import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:train_alarm/constants.dart' as constants;

class MapPicker extends StatefulWidget {
  final int radius;
  final LatLng koordinaty;
  const MapPicker({required this.radius, required this.koordinaty, Key? key})
      : super(key: key);

  @override
  State<MapPicker> createState() => _RadiusPickerState();
}

class _RadiusPickerState extends State<MapPicker> {
  final Completer<GoogleMapController> _controller = Completer();

  @override
  Widget build(BuildContext context) {
    final CameraPosition kGooglePlex = CameraPosition(
      target: widget.koordinaty,
      zoom: 14.4746,
    );
    return SizedBox(
      height: 250,
      width: MediaQuery.of(context).size.width * 0.92,
      child: Container(
        decoration: BoxDecoration(
            color: constants.secondaryColor,
            borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(3),
          child: GoogleMap(
            mapType: MapType.hybrid,
            initialCameraPosition: kGooglePlex,
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
          ),
        ),
      ),
    );
  }
}
