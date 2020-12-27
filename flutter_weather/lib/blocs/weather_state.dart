import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

import '../models/models.dart';

abstract class WeatherState extends Equatable {
  const WeatherState();

  @override
  // TODO: implement props
  List<Object> get props => [];
}

class WeatherInitial extends WeatherState {}

class WeatherLoadInProgress extends WeatherState {}

class WeatherLoadSuccess extends WeatherState {
  final Weather weather;

  const WeatherLoadSuccess({@required this.weather}) : assert(weather != null);

  @override
  // TODO: implement props
  List<Object> get props => [weather];
}

class WeatherLoadFailure extends WeatherState {}
