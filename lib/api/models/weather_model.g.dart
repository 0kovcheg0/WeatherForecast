// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherModel _$WeatherModelFromJson(Map<String, dynamic> json) {
  return WeatherModel(
    lat: (json['lat'] as num).toDouble(),
    lon: (json['lon'] as num).toDouble(),
    timezone: json['timezone'] as String,
    timezoneOffset: json['timezoneOffset'] as int,
    current: Current.fromJson(json['current'] as Map<String, dynamic>),
    hourly: (json['hourly'] as List<dynamic>)
        .map((e) => Hourly.fromJson(e as Map<String, dynamic>))
        .toList(),
    daily: (json['daily'] as List<dynamic>)
        .map((e) => Daily.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$WeatherModelToJson(WeatherModel instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lon': instance.lon,
      'timezone': instance.timezone,
      'timezoneOffset': instance.timezoneOffset,
      'current': instance.current.toJson(),
      'hourly': instance.hourly.map((e) => e.toJson()).toList(),
      'daily': instance.daily.map((e) => e.toJson()).toList(),
    };

Current _$CurrentFromJson(Map<String, dynamic> json) {
  return Current(
    dt: json['dt'] as int,
    sunrise: json['sunrise'] as int,
    sunset: json['sunset'] as int,
    temp: (json['temp'] as num).toDouble(),
    feelsLike: (json['feelsLike'] as num).toDouble(),
    pressure: json['pressure'] as int,
    humidity: json['humidity'] as int,
    dewPoint: (json['dewPoint'] as num).toDouble(),
    uvi: (json['uvi'] as num).toDouble(),
    clouds: json['clouds'] as int,
    visibility: json['visibility'] as int,
    windSpeed: json['windSpeed'] as int,
    windDeg: json['windDeg'] as int,
    weather: (json['weather'] as List<dynamic>)
        .map((e) => Weather.fromJson(e as Map<String, dynamic>))
        .toList(),
    rain: Rain.fromJson(json['rain'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CurrentToJson(Current instance) => <String, dynamic>{
      'dt': instance.dt,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
      'temp': instance.temp,
      'feelsLike': instance.feelsLike,
      'pressure': instance.pressure,
      'humidity': instance.humidity,
      'dewPoint': instance.dewPoint,
      'uvi': instance.uvi,
      'clouds': instance.clouds,
      'visibility': instance.visibility,
      'windSpeed': instance.windSpeed,
      'windDeg': instance.windDeg,
      'weather': instance.weather.map((e) => e.toJson()).toList(),
      'rain': instance.rain.toJson(),
    };

Weather _$WeatherFromJson(Map<String, dynamic> json) {
  return Weather(
    id: json['id'] as int,
    main: json['main'] as String,
    description: json['description'] as String,
    icon: json['icon'] as String,
  );
}

Map<String, dynamic> _$WeatherToJson(Weather instance) => <String, dynamic>{
      'id': instance.id,
      'main': instance.main,
      'description': instance.description,
      'icon': instance.icon,
    };

Rain _$RainFromJson(Map<String, dynamic> json) {
  return Rain(
    d1h: (json['d1h'] as num).toDouble(),
  );
}

Map<String, dynamic> _$RainToJson(Rain instance) => <String, dynamic>{
      'd1h': instance.d1h,
    };

Hourly _$HourlyFromJson(Map<String, dynamic> json) {
  return Hourly(
    dt: json['dt'] as int,
    temp: (json['temp'] as num).toDouble(),
    feelsLike: (json['feelsLike'] as num).toDouble(),
    pressure: json['pressure'] as int,
    humidity: json['humidity'] as int,
    dewPoint: (json['dewPoint'] as num).toDouble(),
    uvi: (json['uvi'] as num).toDouble(),
    clouds: json['clouds'] as int,
    visibility: json['visibility'] as int,
    windSpeed: (json['windSpeed'] as num).toDouble(),
    windDeg: json['windDeg'] as int,
    windGust: (json['windGust'] as num).toDouble(),
    weather: (json['weather'] as List<dynamic>)
        .map((e) => Weather.fromJson(e as Map<String, dynamic>))
        .toList(),
    pop: json['pop'] as int,
  );
}

Map<String, dynamic> _$HourlyToJson(Hourly instance) => <String, dynamic>{
      'dt': instance.dt,
      'temp': instance.temp,
      'feelsLike': instance.feelsLike,
      'pressure': instance.pressure,
      'humidity': instance.humidity,
      'dewPoint': instance.dewPoint,
      'uvi': instance.uvi,
      'clouds': instance.clouds,
      'visibility': instance.visibility,
      'windSpeed': instance.windSpeed,
      'windDeg': instance.windDeg,
      'windGust': instance.windGust,
      'weather': instance.weather.map((e) => e.toJson()).toList(),
      'pop': instance.pop,
    };

Daily _$DailyFromJson(Map<String, dynamic> json) {
  return Daily(
    dt: json['dt'] as int,
    sunrise: json['sunrise'] as int,
    sunset: json['sunset'] as int,
    moonrise: json['moonrise'] as int,
    moonset: json['moonset'] as int,
    moonPhase: (json['moonPhase'] as num).toDouble(),
    temp: Temp.fromJson(json['temp'] as Map<String, dynamic>),
    feelsLike: FeelsLike.fromJson(json['feelsLike'] as Map<String, dynamic>),
    pressure: json['pressure'] as int,
    humidity: json['humidity'] as int,
    dewPoint: (json['dewPoint'] as num).toDouble(),
    windSpeed: (json['windSpeed'] as num).toDouble(),
    windDeg: json['windDeg'] as int,
    weather: (json['weather'] as List<dynamic>)
        .map((e) => Weather.fromJson(e as Map<String, dynamic>))
        .toList(),
    clouds: json['clouds'] as int,
    pop: (json['pop'] as num).toDouble(),
    rain: (json['rain'] as num).toDouble(),
    uvi: (json['uvi'] as num).toDouble(),
  );
}

Map<String, dynamic> _$DailyToJson(Daily instance) => <String, dynamic>{
      'dt': instance.dt,
      'sunrise': instance.sunrise,
      'sunset': instance.sunset,
      'moonrise': instance.moonrise,
      'moonset': instance.moonset,
      'moonPhase': instance.moonPhase,
      'temp': instance.temp.toJson(),
      'feelsLike': instance.feelsLike.toJson(),
      'pressure': instance.pressure,
      'humidity': instance.humidity,
      'dewPoint': instance.dewPoint,
      'windSpeed': instance.windSpeed,
      'windDeg': instance.windDeg,
      'weather': instance.weather.map((e) => e.toJson()).toList(),
      'clouds': instance.clouds,
      'pop': instance.pop,
      'rain': instance.rain,
      'uvi': instance.uvi,
    };

Temp _$TempFromJson(Map<String, dynamic> json) {
  return Temp(
    day: (json['day'] as num).toDouble(),
    min: (json['min'] as num).toDouble(),
    max: (json['max'] as num).toDouble(),
    night: (json['night'] as num).toDouble(),
    eve: (json['eve'] as num).toDouble(),
    morn: (json['morn'] as num).toDouble(),
  );
}

Map<String, dynamic> _$TempToJson(Temp instance) => <String, dynamic>{
      'day': instance.day,
      'min': instance.min,
      'max': instance.max,
      'night': instance.night,
      'eve': instance.eve,
      'morn': instance.morn,
    };

FeelsLike _$FeelsLikeFromJson(Map<String, dynamic> json) {
  return FeelsLike(
    day: (json['day'] as num).toDouble(),
    night: (json['night'] as num).toDouble(),
    eve: (json['eve'] as num).toDouble(),
    morn: (json['morn'] as num).toDouble(),
  );
}

Map<String, dynamic> _$FeelsLikeToJson(FeelsLike instance) => <String, dynamic>{
      'day': instance.day,
      'night': instance.night,
      'eve': instance.eve,
      'morn': instance.morn,
    };
