import 'package:meta/meta.dart';
import 'package:bloc/bloc.dart';

import '../repositories/repositories.dart';
import '../models/models.dart';
import 'blocs.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  final WeatherRepository weatherRepository;

  WeatherBloc({@required this.weatherRepository})
      : assert(weatherRepository != null),
        super(WeatherInitial());

  @override
  Stream<WeatherState> mapEventToState(WeatherEvent event) async* {
    if (event is WeatherRequested) {
      yield* _mapWeatherRquestedToState(event);
    }

    if (event is WeatherRefreshRequested) {
      yield* _mapWeatherRefreshRequested(event);
    }
  }

  Stream<WeatherState> _mapWeatherRquestedToState(
      WeatherRequested event) async* {
    yield WeatherLoadInProgress();
    try {
      final Weather weather = await weatherRepository.getWeather(event.city);
      yield WeatherLoadSuccess(weather: weather);
    } catch (_) {
      yield WeatherLoadFailure();
    }
  }

  Stream<WeatherState> _mapWeatherRefreshRequested(
      WeatherRefreshRequested event) async* {
    try {
      final Weather weather = await weatherRepository.getWeather(event.city);
      yield WeatherLoadSuccess(weather: weather);
    } catch (_) {}
  }
}
