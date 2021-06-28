import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_forecast/api/models/hourly.dart';

class HourlyWeatherView extends StatelessWidget {
  final Hourly hourlyWeather;
  final EdgeInsets padding;

  HourlyWeatherView({
    required this.hourlyWeather,
    this.padding = const EdgeInsets.all(12),
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          ExpansionTile(
            title: Text("${hourlyWeather.dt} + ${hourlyWeather.temp}"),
              children: <Widget>[
                ListTile(
                  title: Text("${hourlyWeather.weather}"),
                )
              ],
          ),
        ],
      ),
    );
  }
}
