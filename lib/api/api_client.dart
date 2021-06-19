import 'package:chopper/chopper.dart';
import 'package:weather_forecast/api/models/weather_model.dart';
import 'package:weather_forecast/api/services/weather_service.dart';
import 'package:weather_forecast/resources/app_strings.dart';

import 'api_error.dart';

class ApiClient {
  static final ChopperClient _chopperClient = ChopperClient(
    baseUrl: AppStrings.baseUrl,
    services: [
      WeatherService.create(),
    ],
    // TODO: See this feature in details
    interceptors: [],
    converter: JsonConverter(),
  );

  static final weatherService = _chopperClient.getService<WeatherService>();

  Future<WeatherModel> getWeather() async {
    final rawWeathers =
        (await _makeCheckedCall(() => weatherService.getWeather())).body;
    final weather = WeatherModel.fromJson(rawWeathers);

    return weather;
  }

  Future<Response> _makeCheckedCall(Future<Response> Function() call) async {
    try {
      final response = await call();

      if (response.statusCode >= 400) {
        throw ApiError(
          statusCode: response.statusCode,
          message: response.error.toString(),
        );
      }

      return response;
    } on ApiError catch (ex) {
      throw ex;
    }
  }
}
