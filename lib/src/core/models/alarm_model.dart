import 'package:equatable/equatable.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class AlarmModel extends Equatable {
  final LatLng koordinaty;
  final int radius;

  const AlarmModel({
    required this.koordinaty,
    required this.radius,
  });

  @override
  List<Object?> get props => [koordinaty, radius];
}
