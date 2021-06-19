import 'package:json_annotation/json_annotation.dart';

part 'rain.g.dart';

@JsonSerializable(explicitToJson: true, anyMap: true)
class Rain {
  double d1h;

  Rain({required this.d1h});

  factory Rain.fromJson(Map<String, dynamic> json) => _$RainFromJson(json);

  Map<String, dynamic> toJson() => _$RainToJson(this);
}