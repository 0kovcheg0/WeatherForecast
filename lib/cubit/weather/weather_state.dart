part of 'weather_cubit.dart';

enum WeatherStatus {
  initial,
  loading,
  loaded,
  error,
}

@immutable
class WeatherState extends Equatable {

  final List<WeatherMode>? weatherMode;
  final String? message;
  final WeatherStatus? status;

  WeatherState({
    this.weatherMode,
    this.message,
    this.status,
  });

  WeatherState copyWith({
    List<WeatherMode>? weatherMode,
    String? message,
    WeatherStatus? status,
  }) {
    return WeatherState(
      weatherMode: weatherMode ?? this.weatherMode,
      message: message ?? this.message,
      status: status ?? this.status,
    );
  }

  @override
  List<Object?> get props => [weatherMode, message, status];
}
