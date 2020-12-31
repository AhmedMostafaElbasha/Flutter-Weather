import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/blocs.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Settings')),
      body: ListView(
        children: [
          BlocBuilder<SettingsBloc, SettingsState>(
            builder: (context, state) {
              return ListTile(
                isThreeLine: true,
                title: Text('Temperature Units'),
                trailing: Switch(
                  value: state.temperatureUnits == TemperatureUnits.celsius,
                  onChanged: (_) => BlocProvider.of<SettingsBloc>(context)
                      .add(TemperatureUnitsToggled()),
                ),
                subtitle:
                    Text('Use metric measurements for temperature units.'),
              );
            },
          ),
        ],
      ),
    );
  }
}
