import 'package:geolocator/geolocator.dart';
import 'package:get_it/get_it.dart';
import 'package:weather_forecast/api/api_client.dart';
import 'package:weather_forecast/cubit/geolocation/geolocation_cubit.dart';
import 'package:weather_forecast/cubit/weather/weather_cubit.dart';
import 'package:weather_forecast/api/models/weather_model.dart';

GetIt getIt = GetIt.instance;
final apiClient = getIt.get<ApiClient>();

setup() async {
  getIt.registerFactory(() => ApiClient());
  final geolocation = await GeolocationCubit().getGeolocation();
  getIt.registerLazySingleton(() async => geolocation);
  getIt.registerFactory<WeatherCubit>(() => WeatherCubit(apiClient));
}
