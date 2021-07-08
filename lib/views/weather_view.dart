import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:weather_forecast/api/models/weather_mode.dart';

class WeatherView extends StatelessWidget {
  final WeatherMode weatherMode;
  final EdgeInsets padding;

  WeatherView({
    this.padding = const EdgeInsets.all(12),
    required this.weatherMode,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          ExpansionTile(
            title: Text(
                "${DateFormat.yMMMMd('en_US').add_jm().format(weatherMode.dt)}"),
            children: <Widget>[
              ListTile(
                title: Text("Humidity: ${weatherMode.humidity} % \n"
                    "Pressure: ${weatherMode.pressure} hPa \n"
                    "Cloudiness: ${weatherMode.clouds} % \n"
                    "Wind Speed: ${weatherMode.windSpeed} metre/sec \n"
                    "Wind direction: ${weatherMode.windDeg} degrees \n"
                    "Atmospheric temperature: ${weatherMode.dewPoint}"),
              )
            ],
          ),
        ],
      ),
    );
  }
}
