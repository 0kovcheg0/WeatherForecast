import 'package:get_it/get_it.dart';
import 'package:weather_forecast/api/api_client.dart';
import 'package:weather_forecast/cubit/geolocation/geolocation_cubit.dart';
import 'package:weather_forecast/cubit/weather/weather_cubit.dart';
import 'package:weather_forecast/api/models/weather_model.dart';

GetIt getIt = GetIt.instance;

Future<void> setup() async {
  getIt.registerFactory<ApiClient>(() => ApiClient());
  getIt.registerFactory<GeolocationCubit>(() => GeolocationCubit());
  getIt.registerFactory<WeatherCubit>(() => WeatherCubit(ApiClient()));
}