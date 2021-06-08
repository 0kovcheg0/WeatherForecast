import 'package:json_annotation/json_annotation.dart';

part 'weather_model.g.dart';

@JsonSerializable(explicitToJson: true)
class WeatherModel {
  double lat;
  double lon;
  String timezone;
  int timezoneOffset;
  Current current;
  List<Hourly> hourly;
  List<Daily> daily;

  WeatherModel(
      {required this.lat,
      required this.lon,
      required this.timezone,
      required this.timezoneOffset,
      required this.current,
      required this.hourly,
      required this.daily});

  factory WeatherModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherModelFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherModelToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Current {
  int dt;
  int sunrise;
  int sunset;
  double temp;
  double feelsLike;
  int pressure;
  int humidity;
  double dewPoint;
  double uvi;
  int clouds;
  int visibility;
  int windSpeed;
  int windDeg;
  List<Weather> weather;
  Rain rain;

  Current(
      {required this.dt,
      required this.sunrise,
      required this.sunset,
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
      required this.weather,
      required this.rain});

  factory Current.fromJson(Map<String, dynamic> json) =>
      _$CurrentFromJson(json);

  Map<String, dynamic> toJson() => _$CurrentToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Weather {
  int id;
  String main;
  String description;
  String icon;

  Weather(
      {required this.id,
      required this.main,
      required this.description,
      required this.icon});

  factory Weather.fromJson(Map<String, dynamic> json) =>
      _$WeatherFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Rain {
  double d1h;

  Rain({required this.d1h});

  factory Rain.fromJson(Map<String, dynamic> json) => _$RainFromJson(json);

  Map<String, dynamic> toJson() => _$RainToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Hourly {
  int dt;
  double temp;
  double feelsLike;
  int pressure;
  int humidity;
  double dewPoint;
  double uvi;
  int clouds;
  int visibility;
  double windSpeed;
  int windDeg;
  double windGust;
  List<Weather> weather;
  int pop;

  Hourly(
      {required this.dt,
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
      required this.pop});

  factory Hourly.fromJson(Map<String, dynamic> json) => _$HourlyFromJson(json);

  Map<String, dynamic> toJson() => _$HourlyToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Daily {
  int dt;
  int sunrise;
  int sunset;
  int moonrise;
  int moonset;
  double moonPhase;
  Temp temp;
  FeelsLike feelsLike;
  int pressure;
  int humidity;
  double dewPoint;
  double windSpeed;
  int windDeg;
  List<Weather> weather;
  int clouds;
  double pop;
  double rain;
  double uvi;

  Daily(
      {required this.dt,
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
      required this.rain,
      required this.uvi});

  factory Daily.fromJson(Map<String, dynamic> json) => _$DailyFromJson(json);

  Map<String, dynamic> toJson() => _$DailyToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Temp {
  double day;
  double min;
  double max;
  double night;
  double eve;
  double morn;

  Temp(
      {required this.day,
      required this.min,
      required this.max,
      required this.night,
      required this.eve,
      required this.morn});

  factory Temp.fromJson(Map<String, dynamic> json) => _$TempFromJson(json);

  Map<String, dynamic> toJson() => _$TempToJson(this);
}

@JsonSerializable(explicitToJson: true)
class FeelsLike {
  double day;
  double night;
  double eve;
  double morn;

  FeelsLike(
      {required this.day,
      required this.night,
      required this.eve,
      required this.morn});

  factory FeelsLike.fromJson(Map<String, dynamic> json) =>
      _$FeelsLikeFromJson(json);

  Map<String, dynamic> toJson() => _$FeelsLikeToJson(this);
}
