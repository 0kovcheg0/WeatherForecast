import 'package:chopper/chopper.dart';
import 'package:weather_forecast/resources/app_strings.dart';

part 'weather_service.chopper.dart';

@ChopperApi()
abstract class WeatherService extends ChopperService {
  static WeatherService create([ChopperClient? client]) =>
      _$WeatherService(client);

  @Get(path: AppStrings.baseUrl)
  Future<Response> getWeather();
}
