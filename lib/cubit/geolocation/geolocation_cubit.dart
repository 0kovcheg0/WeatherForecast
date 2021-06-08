import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_forecast/api/api_error.dart';

part 'geolocation_state.dart';

class GeolocationCubit extends Cubit<GeolocationState> {
  Geolocator geolocator;
  GeolocationCubit(this.geolocator) : super(GeolocationState());

  Future<Position> getPosition() async {
    final Position position = await (Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.best,
        forceAndroidLocationManager: true));
    return position;
  }

  Future<void> getGeolocation() async {
    try {
      emit(state.copyWith(status: GeolocationStatus.initial));
      final position = await getPosition();
      emit(state.copyWith(status: GeolocationStatus.loaded, position: position));
    } on ApiError {
      emit(state.copyWith(
          status: GeolocationStatus.error,
          message: "Couldn't fetch tracks. Is the device online?"));
    }
  }
}
