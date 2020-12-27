import 'package:equatable/equatable.dart';

enum WeatherCondition {
  snow,
  sleet,
  hail,
  thunderstorm,
  heavyRain,
  lightRain,
  showers,
  heavyCloud,
  lightCloud,
  clear,
  unknown
}

class Weather extends Equatable {
  final WeatherCondition condition;
  final String formattedCondition;
  final double minTemp;
  final double temp;
  final double maxTemp;
  final int locationId;
  final String created;
  final DateTime lastUpdated;
  final String location;

  const Weather({
    this.condition,
    this.formattedCondition,
    this.minTemp,
    this.temp,
    this.maxTemp,
    this.locationId,
    this.created,
    this.lastUpdated,
    this.location,
  });

  @override
  // TODO: implement props
  List<Object> get props => [
        condition,
        formattedCondition,
        minTemp,
        temp,
        maxTemp,
        locationId,
        created,
        lastUpdated,
        location,
      ];

  static Weather fromJson(dynamic json) {
    final consolidatedWeather = json['consolidated_weather'][0];
    return Weather();
  }

  static WeatherCondition _mapStringToWeatherCondition(String input) {
    switch (input) {
    }
  }
}
