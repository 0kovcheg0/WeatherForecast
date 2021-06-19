import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_forecast/api/api_error.dart';

part 'geolocation_state.dart';

class GeolocationCubit extends Cubit<GeolocationState> {
  GeolocationCubit() : super(GeolocationState());

  Future<void> getGeolocation() async {
    try {
      emit(state.copyWith(
        status: GeolocationStatus.loaded,
        position: await _getPosition(),
      ));
    } on ApiError {
      emit(
        state.copyWith(
          status: GeolocationStatus.error,
          message: "Couldn't fetch tracks. Is the device online?",
        ),
      );
    }
  }

  Future<Position> _getPosition() async {
    return await (Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.best,
      forceAndroidLocationManager: true,
    ));
  }
}
