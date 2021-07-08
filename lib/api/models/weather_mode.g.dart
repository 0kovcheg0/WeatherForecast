// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_mode.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherMode _$WeatherModeFromJson(Map json) {
  return WeatherMode(
    dt: WeatherMode._fromJson(json['dt'] as int),
    pressure: json['pressure'] as int,
    humidity: json['humidity'] as int,
    dewPoint: (json['dew_point'] as num).toDouble(),
    windSpeed: (json['wind_speed'] as num).toDouble(),
    windDeg: json['wind_deg'] as int,
    weather: (json['weather'] as List<dynamic>)
        .map((e) => Weather.fromJson(Map<String, dynamic>.from(e as Map)))
        .toList(),
    clouds: json['clouds'] as int,
    uvi: (json['uvi'] as num).toDouble(),
  );
}

Map<String, dynamic> _$WeatherModeToJson(WeatherMode instance) =>
    <String, dynamic>{
      'dt': WeatherMode._toJson(instance.dt),
      'pressure': instance.pressure,
      'humidity': instance.humidity,
      'dew_point': instance.dewPoint,
      'wind_speed': instance.windSpeed,
      'wind_deg': instance.windDeg,
      'weather': instance.weather.map((e) => e.toJson()).toList(),
      'clouds': instance.clouds,
      'uvi': instance.uvi,
    };
