// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_service.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations
class _$WeatherService extends WeatherService {
  _$WeatherService([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = WeatherService;

  @override
  Future<Response<dynamic>> getWeather(
      {required double latitude,
      required double longtitude,
      String units = AppStrings.units,
      String exclude = AppStrings.castMode,
      String appId = AppStrings.appId}) {
    final $url = 'https://api.openweathermap.org/data/2.5/onecall?';
    final $params = <String, dynamic>{
      'lat': latitude,
      'lon': longtitude,
      'units': units,
      'exclude': exclude,
      'appid': appId
    };
    final $request = Request('GET', $url, client.baseUrl, parameters: $params);
    return client.send<dynamic, dynamic>($request);
  }
}
