import 'package:json_annotation/json_annotation.dart';
import 'package:weather_forecast/api/models/temp.dart';
import 'package:weather_forecast/api/models/feels_like.dart';
import 'package:weather_forecast/api/models/weather.dart';

part 'daily.g.dart';

@JsonSerializable(explicitToJson: true, anyMap: true)
class Daily {
  int dt;
  int sunrise;
  int sunset;
  int moonrise;
  int moonset;
  @JsonKey(name: "moon_phase")
  double moonPhase;
  Temp temp;
  @JsonKey(name: "feels_like")
  FeelsLike feelsLike;
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
  double pop;
  double uvi;

  Daily({
    required this.dt,
    required this.sunrise,
    required this.sunset,
    required this.moonrise,
    required this.moonset,
    required this.moonPhase,
    required this.temp,
    required this.feelsLike,
    required this.pressure,
    required this.humidity,
    required this.dewPoint,
    required this.windSpeed,
    required this.windDeg,
    required this.weather,
    required this.clouds,
    required this.pop,
    required this.uvi,
  });

  factory Daily.fromJson(Map<String, dynamic> json) => _$DailyFromJson(json);

  Map<String, dynamic> toJson() => _$DailyToJson(this);
}