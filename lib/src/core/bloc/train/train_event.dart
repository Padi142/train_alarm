part of 'train_bloc.dart';

abstract class TrainEvent extends Equatable {
  const TrainEvent();

  @override
  List<Object> get props => [];
}

class SetAlarmEvent extends TrainEvent {
  final AlarmModel alarm;
  const SetAlarmEvent(this.alarm);

  @override
  List<Object> get props => [];
}

class SetRadius extends TrainEvent {
  final int radius;
  final LatLng koordinaty;
  const SetRadius(this.radius, this.koordinaty);

  @override
  List<Object> get props => [];
}
