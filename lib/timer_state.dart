import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class TimerState extends Equatable {
  final int duration;
  TimerState(this.duration, [List props = const <dynamic>[]]) : super([duration]..addAll(props));
}

class Ready extends TimerState {
  Ready(int duration) : super(duration);

  @override
  String toString() {
    return 'Ready {duration: $duration}';
  }
}

class Paused extends TimerState {
  Paused(int duration) : super(duration);

  @override
  String toString() => 'Paused { duration: $duration }';
}

class Running extends TimerState {
  Running(int duration) : super(duration);

  @override
  String toString() => 'Running { duration: $duration }';
}

class Finished extends TimerState {
  Finished() : super(0);

  @override
  String toString() => 'Finished';
}
