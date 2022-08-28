part of 'train_bloc.dart';

abstract class TrainEvent extends Equatable {
  const TrainEvent();

  @override
  List<Object> get props => [];
}

class SetAlarmEvent extends TrainEvent {
  final AlarmModel alarm;
  final BuildContext context;
  const SetAlarmEvent(this.alarm, this.context);

  @override
  List<Object> get props => [];
}

class SetRadius extends TrainEvent {
  final int radius;
  const SetRadius(this.radius);

  @override
  List<Object> get props => [];
}

class SetKoordinaty extends TrainEvent {
  final LatLng koordinaty;
  const SetKoordinaty(this.koordinaty);

  @override
  List<Object> get props => [];
}

class Initial extends TrainEvent {
  const Initial();

  @override
  List<Object> get props => [];
}

class RemoveAll extends TrainEvent {
  const RemoveAll();

  @override
  List<Object> get props => [];
}
