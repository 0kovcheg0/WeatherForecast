import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:weather_forecast/api/api_client.dart';
import 'package:weather_forecast/api/api_error.dart';
import 'package:weather_forecast/api/models/weather_model.dart';

part 'weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  final ApiClient apiClient;

  WeatherCubit(this.apiClient) : super(WeatherState());

  Future<void> getWeather() async {
    try {
      emit(state.copyWith(status: WeatherStatus.loading));
      final weather = await apiClient.getWeather();
      emit(state.copyWith(status: WeatherStatus.loaded, weather: weather));
    } on ApiError {
      emit(state.copyWith(
          status: WeatherStatus.error,
          message: "Couldn't fetch tracks. Is the device online?"));
    }
  }
}
