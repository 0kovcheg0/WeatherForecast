import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_forecast/api/api_client.dart';
import 'package:weather_forecast/cubit/geolocation/geolocation_cubit.dart';
import 'package:weather_forecast/cubit/weather/weather_cubit.dart';
import 'package:weather_forecast/pages/home_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MultiBlocProvider(
          providers: [
            BlocProvider(
              create: (BuildContext context) =>
                  WeatherCubit(ApiClient())..getWeather(),
            ),
            BlocProvider(
              create: (BuildContext context) =>
                  GeolocationCubit()..getGeolocation(),
            ),
          ],
          child: HomePage(title: 'Flutter Demo Home Page'),
        ));
  }
}
