// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'daily.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Daily _$DailyFromJson(Map json) {
  return Daily(
    dt: json['dt'] as int,
    sunrise: json['sunrise'] as int,
    sunset: json['sunset'] as int,
    moonrise: json['moonrise'] as int,
    moonset: json['moonset'] as int,
    moonPhase: (json['moon_phase'] as num).toDouble(),
    temp: Temp.fromJson(Map<String, dynamic>.from(json['temp'] as Map)),
    feelsLike: FeelsLike.fromJson(
        Map<String, dynamic>.from(json['feels_like'] as Map)),
    pressure: json['pressure'] as int,
    humidity: json['humidity'] as int,
    dewPoint: (json['dew_point'] as num).toDouble(),
    windSpeed: (json['wind_speed'] as num).toDouble(),
    windDeg: json['wind_deg'] as int,
    weather: (json['weather'] as List<dynamic>)
        .map((e) => Weather.fromJson(Map<String, dynamic>.from(e as Map)))
        .toList(),
    clouds: json['clouds'] as int,
    pop: (json['pop'] as num).toDouble(),
    uvi: (json['uvi'] as num).toDouble(),
  );
}

Map<String, dynamic> _$DailyToJson(Daily instance) => <String, dynamic>{
      'dt': instance.dt,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
      'moonrise': instance.moonrise,
      'moonset': instance.moonset,
      'moon_phase': instance.moonPhase,
      'temp': instance.temp.toJson(),
      'feels_like': instance.feelsLike.toJson(),
      'pressure': instance.pressure,
      'humidity': instance.humidity,
      'dew_point': instance.dewPoint,
      'wind_speed': instance.windSpeed,
      'wind_deg': instance.windDeg,
      'weather': instance.weather.map((e) => e.toJson()).toList(),
      'clouds': instance.clouds,
      'pop': instance.pop,
      'uvi': instance.uvi,
    };
