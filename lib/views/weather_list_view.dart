import 'package:expandable/expandable.dart';
import 'package:flutter/cupertino.dart';
import 'package:weather_forecast/api/models/weather_model.dart';

class WeatherListView extends StatelessWidget {
  final List<Hourly> hourly;

  WeatherListView({
    required this.hourly
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return Container(child: Text(hourly[index].dt.toString() + hourly[index].temp.toString()),

        );},);
  }

}