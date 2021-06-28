import 'package:json_annotation/json_annotation.dart';
import 'package:weather_forecast/api/models/weather.dart';

part 'hourly.g.dart';

@JsonSerializable(explicitToJson: true, anyMap: true)
class Hourly {
  @JsonKey(fromJson: _fromJson, toJson: _toJson)
  DateTime dt;
  double temp;
  @JsonKey(name: "feels_like")
  double feelsLike;
  int pressure;
  int humidity;
  @JsonKey(name: "dew_point")
  double dewPoint;
  double uvi;
  int clouds;
  int visibility;
  @JsonKey(name: "wind_speed")
  double windSpeed;
  @JsonKey(name: "wind_deg")
  int windDeg;
  @JsonKey(name: "wind_gust")
  double windGust;
  List<Weather> weather;
  double pop;
  Hourly({
    required this.dt,
    required this.temp,
    required this.feelsLike,
    required this.pressure,
    required this.humidity,
    required this.dewPoint,
    required this.uvi,
    required this.clouds,
    required this.visibility,
    required this.windSpeed,
    required this.windDeg,
    required this.windGust,
    required this.weather,
    required this.pop,
  });

  factory Hourly.fromJson(Map<String, dynamic> json) => _$HourlyFromJson(json);

  Map<String, dynamic> toJson() => _$HourlyToJson(this);
  //Converting UNIX int dt JSON response to Date Time since epoch
  static DateTime _fromJson(int dt) => DateTime.fromMillisecondsSinceEpoch(dt);
  static int _toJson(DateTime time) => time.millisecondsSinceEpoch;
}