import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

part 'train_state.freezed.dart';

@freezed
class TrainState with _$TrainState {
  const factory TrainState.loading() = Loading;
  const factory TrainState.succes() = Succes;
  const factory TrainState.partial(int radius, LatLng koordinaty) = Partial;
  const factory TrainState.error(String error) = Error;
}
