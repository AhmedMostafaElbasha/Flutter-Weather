import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

enum TemperatureUnits { fahrenheit, celsius }

class SettingsState extends Equatable {
  final TemperatureUnits temperatureUnits;

  const SettingsState({@required this.temperatureUnits})
      : assert(temperatureUnits != null);

  @override
  // TODO: implement props
  List<Object> get props => [temperatureUnits];
}