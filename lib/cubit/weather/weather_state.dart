part of 'weather_cubit.dart';

enum WeatherStatus {
  initial,
  loading,
  loaded,
  error,
}

@immutable
class WeatherState extends Equatable {

  final WeatherModel? weather;
  final List<WeatherMode>? weatherMode;
  final String? message;
  final WeatherStatus? status;

  WeatherState({
    this.weather,
    this.weatherMode,
    this.message,
    this.status,
  });

  WeatherState copyWith({
    WeatherModel? weather,
    List<WeatherMode>? weatherMode,
    String? message,
    WeatherStatus? status,
  }) {
    return WeatherState(
      weather: weather ?? this.weather,
      weatherMode: weatherMode ?? this.weatherMode,
      message: message ?? this.message,
      status: status ?? this.status,
    );
  }

  @override
  List<Object?> get props => [weather, message, status];
}
