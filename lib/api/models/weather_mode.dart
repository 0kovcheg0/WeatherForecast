import 'package:json_annotation/json_annotation.dart';

import 'package:weather_forecast/api/models/weather.dart';

part 'weather_mode.g.dart';

@JsonSerializable(explicitToJson: true, anyMap: true)
class WeatherMode {
  @JsonKey(fromJson: _fromJson, toJson: _toJson)
  DateTime dt;
  int pressure;
  int humidity;
  @JsonKey(name: "dew_point")
  double dewPoint;
  @JsonKey(name: "wind_speed")
  double windSpeed;
  @JsonKey(name: "wind_deg")
  int windDeg;
  List<Weather> weather;
  int clouds;
  double uvi;

  WeatherMode({
    required this.dt,
    required this.pressure,
    required this.humidity,
    required this.dewPoint,
    required this.windSpeed,
    required this.windDeg,
    required this.weather,
    required this.clouds,
    required this.uvi,
  });

  factory WeatherMode.fromJson(Map<String, dynamic> json) =>
      _$WeatherModeFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherModeToJson(this);

  static DateTime _fromJson(int int) =>
      DateTime.fromMillisecondsSinceEpoch(int * 1000, isUtc: true);

  static int _toJson(DateTime time) => time.millisecondsSinceEpoch;
}
