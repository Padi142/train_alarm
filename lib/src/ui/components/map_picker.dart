import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:search_map_location/search_map_location.dart' as search;
import 'package:geolocator/geolocator.dart';
import 'package:search_map_location/utils/google_search/latlng.dart'
    // ignore: library_prefixes
    as searchLatLng;
import 'package:search_map_location/utils/google_search/place.dart'
    // ignore: library_prefixes
    as searchPlace;
import 'package:train_alarm/constants.dart' as constants;
import 'package:train_alarm/keys.dart' as keys;
import 'package:train_alarm/src/core/bloc/train/train_bloc.dart';
import 'package:train_alarm/src/ui/components/toast_alert.dart';
import 'package:train_alarm/src/ui/components/toast_error.dart';

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
    return Column(
      children: [
        search.SearchLocation(
          apiKey: keys.googleMaps,
          // The language of the autocompletion
          language: 'cs',
          //Search only work for this specific country
          onSelected: (searchPlace.Place place) async {
            final geolocation = await place.geolocation;
            if (geolocation != null) {
              LatLng koordinace = LatLng(
                  (geolocation.coordinates as searchLatLng.LatLng).latitude,
                  (geolocation.coordinates as searchLatLng.LatLng).longitude);
              // Will animate the GoogleMap camera, taking us to the selected position with an appropriate zoom
              final GoogleMapController controller = await _controller.future;
              controller.animateCamera(CameraUpdate.newLatLng(koordinace));
            }
          },
        ),
        const SizedBox(
          height: 30,
        ),
        SizedBox(
          height: 250,
          width: MediaQuery.of(context).size.width * 0.92,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    color: constants.mainColor,
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(3),
                  child: GoogleMap(
                    mapType: MapType.hybrid,
                    initialCameraPosition: kGooglePlex,
                    onMapCreated: (GoogleMapController controller) {
                      _controller.complete(controller);
                    },
                    onCameraMove: (camera) async {
                      BlocProvider.of<TrainBloc>(context).add(SetKoordinaty(
                          LatLng(camera.target.latitude,
                              camera.target.longitude)));
                    },
                  ),
                ),
              ),
              Positioned(
                bottom: 10,
                left: 7,
                child: ElevatedButton(
                    onPressed: () async {
                      bool serviceEnabled;
                      LocationPermission permission;

                      serviceEnabled =
                          await Geolocator.isLocationServiceEnabled();
                      if (!serviceEnabled) {
                        // ignore: use_build_context_synchronously
                        ScaffoldMessenger.of(context).showSnackBar(
                            // ignore: use_build_context_synchronously
                            SnackError(context, 'Lokace je zakázána :/'));
                      }

                      permission = await Geolocator.checkPermission();
                      if (permission == LocationPermission.denied) {
                        permission = await Geolocator.requestPermission();
                        if (permission == LocationPermission.denied) {
                          // ignore: use_build_context_synchronously
                          ScaffoldMessenger.of(context).showSnackBar(
                              // ignore: use_build_context_synchronously
                              SnackError(context, 'Lokace je zakázána :/'));
                        }
                      }

                      if (permission == LocationPermission.deniedForever) {
                        // Permissions are denied forever, handle appropriately.
                        // ignore: use_build_context_synchronously
                        ScaffoldMessenger.of(context).showSnackBar(
                            // ignore: use_build_context_synchronously
                            SnackError(context, 'Lokace je zakázána :/'));
                      }
                      // ignore: use_build_context_synchronously
                      ScaffoldMessenger.of(context).showSnackBar(
                          // ignore: use_build_context_synchronously
                          SnackAlert(context, 'Získávám koordináty'));

                      await Geolocator.getCurrentPosition();
                      await Future.delayed(const Duration(seconds: 1));
                      final location = await Geolocator.getCurrentPosition();

                      LatLng position =
                          LatLng(location.latitude, location.longitude);
                      final GoogleMapController controller =
                          await _controller.future;

                      controller
                          .animateCamera(CameraUpdate.newLatLng(position));
                    },
                    style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(15),
                      primary: constants.mainColor, // <-- Button color
                    ),
                    child: const Icon(Icons.my_location)),
              )
            ],
          ),
        ),
      ],
    );
  }
}
