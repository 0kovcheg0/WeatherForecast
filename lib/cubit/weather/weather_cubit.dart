import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:weather_forecast/api/api_client.dart';
import 'package:weather_forecast/api/api_error.dart';
import 'package:weather_forecast/api/models/weather_mode.dart';
import 'package:weather_forecast/api/models/weather_model.dart';
import 'package:weather_forecast/resources/app_strings.dart';
import 'package:weather_forecast/utils/geolocation_utils.dart';


part 'weather_state.dart';

class WeatherCubit extends Cubit<WeatherState> {
  final ApiClient apiClient = GetIt.I<ApiClient>();

  WeatherCubit() : super(WeatherState());


  Future<void> getWeather() async {
    try {
        emit(state.copyWith(status: WeatherStatus.initial));
        final position = await GeolocationUtils.getPosition();
        final weather = await apiClient.getWeather(
          latitude: position.latitude,
          longtitude: position.longitude,
        );
        emit(state.copyWith(status: WeatherStatus.loaded, weather: weather));
    } on ApiError {
      emit(
        state.copyWith(
          status: WeatherStatus.error,
          message: AppStrings.connectionError,
        ),
      );
    }
  }
  Future<void> getHourlyWeatherMode() async {
    try {
      emit(state.copyWith(status: WeatherStatus.initial));
      final position = await GeolocationUtils.getPosition();
      final weather = await apiClient.getWeather(
        latitude: position.latitude,
        longtitude: position.longitude,
      );
      emit(state.copyWith(status: WeatherStatus.loaded, weatherMode: weather.hourly ));
    } on ApiError {
      emit(
        state.copyWith(
          status: WeatherStatus.error,
          message: AppStrings.connectionError,
        ),
      );
    }
  }
  Future<void> getDailyWeatherMode() async {
    try {
      emit(state.copyWith(status: WeatherStatus.initial));
      final position = await GeolocationUtils.getPosition();
      final weather = await apiClient.getWeather(
        latitude: position.latitude,
        longtitude: position.longitude,
      );
      emit(state.copyWith(status: WeatherStatus.loaded, weatherMode: weather.daily ));
    } on ApiError {
      emit(
        state.copyWith(
          status: WeatherStatus.error,
          message: AppStrings.connectionError,
        ),
      );
    }
  }
}
