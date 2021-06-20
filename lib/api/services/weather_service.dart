import 'package:chopper/chopper.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_forecast/cubit/geolocation/geolocation_cubit.dart';
import 'package:weather_forecast/resources/app_strings.dart';

import '../../service_locator.dart';

part 'weather_service.chopper.dart';

@ChopperApi(baseUrl: AppStrings.baseUrl)
abstract class WeatherService extends ChopperService {
  static WeatherService create([ChopperClient? client]) =>
      _$WeatherService(client);

  final position = getIt.get<GeolocationCubit>();
  //static const lat = position.state.position.latitude;
  // static const url =
  //     '${AppStrings.startUrl}?lat=${position.state.position.latitude.toString()}&lon=${position.latitude}&exclude=${AppStrings.castMode}&appid=${AppStrings.appId}';

  @Get()
  Future<Response> getWeather();
}
