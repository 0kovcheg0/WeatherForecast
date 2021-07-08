import 'package:chopper/chopper.dart';
import 'package:weather_forecast/api/models/weather_model.dart';
import 'package:weather_forecast/api/services/weather_service.dart';
import 'package:weather_forecast/resources/app_strings.dart';
import 'package:weather_forecast/api/api_error.dart';

class ApiClient {
  static final ChopperClient _chopperClient = ChopperClient(
    baseUrl: AppStrings.baseUrl,
    services: [
      WeatherService.create(),
    ],
    converter: JsonConverter(),
  );

  static final weatherService = _chopperClient.getService<WeatherService>();

  Future<WeatherModel> getWeather({
    required double latitude,
    required double longtitude,
  }) async {
    final rawWeathers = await _makeCheckedCall(
      () => weatherService.getWeather(
        latitude: latitude,
        longtitude: longtitude,
      ),
    );
    return WeatherModel.fromJson(rawWeathers.body);
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
