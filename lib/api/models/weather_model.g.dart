// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherModel _$WeatherModelFromJson(Map json) {
  return WeatherModel(
    lat: (json['lat'] as num).toDouble(),
    lon: (json['lon'] as num).toDouble(),
    timezone: json['timezone'] as String,
    timezoneOffset: json['timezone_offset'] as int,
    hourly: (json['hourly'] as List<dynamic>)
        .map((e) => WeatherMode.fromJson(Map<String, dynamic>.from(e as Map)))
        .toList(),
    daily: (json['daily'] as List<dynamic>)
        .map((e) => WeatherMode.fromJson(Map<String, dynamic>.from(e as Map)))
        .toList(),
  );
}

Map<String, dynamic> _$WeatherModelToJson(WeatherModel instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lon': instance.lon,
      'timezone': instance.timezone,
      'timezone_offset': instance.timezoneOffset,
      'hourly': instance.hourly.map((e) => e.toJson()).toList(),
      'daily': instance.daily.map((e) => e.toJson()).toList(),
    };
