// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feels_like.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FeelsLike _$FeelsLikeFromJson(Map json) {
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
