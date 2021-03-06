import 'package:chopper/chopper.dart';
import 'package:weather_forecast/resources/app_strings.dart';

part 'weather_service.chopper.dart';

@ChopperApi(baseUrl: AppStrings.baseUrl)
abstract class WeatherService extends ChopperService {
  static WeatherService create([ChopperClient? client]) =>
      _$WeatherService(client);

  @Get()
  Future<Response> getWeather({
    @Query("lat") required double latitude,
    @Query("lon") required double longtitude,
    @Query("exclude") String exclude = AppStrings.castMode,
    @Query("appid") String appId = AppStrings.appId,
  });
}
