import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:weather_forecast/api/models/weather_model.dart';
import 'package:weather_forecast/cubit/weather/weather_cubit.dart';
import 'package:weather_forecast/pages/side_menu.dart';
import 'package:weather_forecast/resources/app_strings.dart';
import 'package:weather_forecast/views/weather_list_view.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideMenu(),
      appBar: AppBar(
        title: Text(AppStrings.homeTitle),
      ),
      body: BlocConsumer<WeatherCubit, WeatherState>(
        listener: (weatherCubit, state) {
          if (state.status == WeatherStatus.error) {
            ScaffoldMessenger.of(weatherCubit).showSnackBar(
              SnackBar(
                content: Text(state.message!),
              ),
            );
          }
        },
        builder: (weatherCubit, state) {
          switch (state.status) {
            case WeatherStatus.initial:
            case WeatherStatus.loading:
            case WeatherStatus.loaded:
              return _buildHourlyWeatherList(state.weather!);
            default:
             return Text("0, 0");
          }
        },
      ),
    );
  }

  Widget _buildHourlyWeatherList(WeatherModel weather) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 24),
      itemCount: weather.hourly.length,
      itemBuilder: (context, index) {
        return HourlyWeatherView(hourlyWeather: weather.hourly[index]);
      },
    );
  }

  //Message box in case of denied location permission
  Widget _showLocationDeniedDialog() {
          return AlertDialog(
            backgroundColor: Colors.white,
            title: Text('Location is disabled :(',
                style: TextStyle(color: Colors.black)),
            actions: <Widget>[
              TextButton(
                child: Text('Enable!'),
                style: TextButton.styleFrom(
                  primary: Colors.grey,
                  elevation: 1,
                ),
                onPressed: () {
                  Geolocator.openLocationSettings();
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
  }

  Widget _buildLoading() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }
}
