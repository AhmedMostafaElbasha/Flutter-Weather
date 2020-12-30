import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';

import 'blocs.dart';

class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc()
      : super(SettingsState(temperatureUnits: TemperatureUnits.celsius));

  @override
  Stream<SettingsState> mapEventToState(SettingsEvent event) async* {
    // TODO: implement mapEventToState
    if (event is TemperatureUnitsToggled) {
      yield SettingsState(
        temperatureUnits: state.temperatureUnits == TemperatureUnits.celsius
            ? TemperatureUnits.fahrenheit
            : TemperatureUnits.celsius,
      );
    }
  }
}
