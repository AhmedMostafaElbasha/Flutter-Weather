import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

abstract class SettingsEvent extends Equatable {}

class TemperatureUnitsToggled extends SettingsEvent {
  @override
  // TODO: implement props
  List<Object> get props => [];
}
