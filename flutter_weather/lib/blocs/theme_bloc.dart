import 'package:flutter/material.dart';
import 'blocs.dart';
import 'package:flutter_weather/models/models.dart';
import 'package:bloc/bloc.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc()
      : super(ThemeState(theme: ThemeData.light(), color: Colors.lightBlue));

  @override
  Stream<ThemeState> mapEventToState(ThemeEvent event) {
    // TODO: implement mapEventToState
    throw UnimplementedError();
  }

  ThemeState _mapWeatherConditionToThemeData(WeatherCondition condition) {
    ThemeState theme;

    switch (condition) {
      case WeatherCondition.clear:
      case WeatherCondition.lightCloud:
        theme = ThemeState(
          theme: ThemeData(
            primaryColor: Colors.orangeAccent,
          ),
          color: Colors.yellow,
        );
        break;
      case WeatherCondition.hail:
      case WeatherCondition.sleet:
      case WeatherCondition.snow:
        theme = ThemeState(
          theme: ThemeData(
            primaryColor: Colors.lightBlueAccent,
          ),
          color: Colors.lightBlue,
        );
        break;
      case WeatherCondition.heavyCloud:
        theme = ThemeState(
          theme: ThemeData(
            primaryColor: Colors.blueGrey,
          ),
          color: Colors.grey,
        );
        break;
      case WeatherCondition.lightRain:
      case WeatherCondition.heavyRain:
      case WeatherCondition.showers:
        theme = ThemeState(
          theme: ThemeData(
            primaryColor: Colors.indigoAccent,
          ),
          color: Colors.indigo,
        );
        break;
      case WeatherCondition.thunderstorm:
        theme = ThemeState(
          theme: ThemeData(
            primaryColor: Colors.deepPurpleAccent,
          ),
          color: Colors.deepPurple,
        );
        break;
      case WeatherCondition.unknown:
        theme = ThemeState(
          theme: ThemeData.light(),
          color: Colors.lightBlue,
        );
        break;
    }

    return theme;
  }
}
