import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_forecast/cubit/weather/weather_cubit.dart';
import 'package:weather_forecast/pages/home_page.dart';
import 'package:weather_forecast/resources/app_strings.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: BlocProvider(
        create: (BuildContext context) => WeatherCubit()..getWeather(),
        child: HomePage(title: AppStrings.homeTitle),
      ),
    );
  }
}
