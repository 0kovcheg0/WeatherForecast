import 'package:json_annotation/json_annotation.dart';
import 'package:weather_forecast/api/models/hourly.dart';
import 'package:weather_forecast/api/models/daily.dart';

part 'weather_model.g.dart';

@JsonSerializable(explicitToJson: true, anyMap: true)
class WeatherModel {
  double lat;
  double lon;
  String timezone;
  @JsonKey(name: "timezone_offset")
  int timezoneOffset;
  List<Hourly> hourly;
  List<Daily> daily;

  WeatherModel({
    required this.lat,
    required this.lon,
    required this.timezone,
    required this.timezoneOffset,
    required this.hourly,
    required this.daily,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherModelFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherModelToJson(this);
}
