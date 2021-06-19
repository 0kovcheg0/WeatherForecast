// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hourly.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Hourly _$HourlyFromJson(Map json) {
  return Hourly(
    dt: json['dt'] as int,
    temp: (json['temp'] as num).toDouble(),
    feelsLike: (json['feels_like'] as num).toDouble(),
    pressure: json['pressure'] as int,
    humidity: json['humidity'] as int,
    dewPoint: (json['dew_point'] as num).toDouble(),
    uvi: (json['uvi'] as num).toDouble(),
    clouds: json['clouds'] as int,
    visibility: json['visibility'] as int,
    windSpeed: (json['wind_speed'] as num).toDouble(),
    windDeg: json['wind_deg'] as int,
    windGust: (json['wind_gust'] as num).toDouble(),
    weather: (json['weather'] as List<dynamic>)
        .map((e) => Weather.fromJson(Map<String, dynamic>.from(e as Map)))
        .toList(),
    pop: (json['pop'] as num).toDouble(),
  );
}

Map<String, dynamic> _$HourlyToJson(Hourly instance) => <String, dynamic>{
      'dt': instance.dt,
      'temp': instance.temp,
      'feels_like': instance.feelsLike,
      'pressure': instance.pressure,
      'humidity': instance.humidity,
      'dew_point': instance.dewPoint,
      'uvi': instance.uvi,
      'clouds': instance.clouds,
      'visibility': instance.visibility,
      'wind_speed': instance.windSpeed,
      'wind_deg': instance.windDeg,
      'wind_gust': instance.windGust,
      'weather': instance.weather.map((e) => e.toJson()).toList(),
      'pop': instance.pop,
    };
