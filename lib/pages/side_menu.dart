import 'package:flutter/material.dart';
import 'package:weather_forecast/api/models/weather_mode.dart';
import 'package:weather_forecast/cubit/weather/weather_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_forecast/resources/app_strings.dart';
import 'home_page.dart';

class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final weatherCubit = context.read<WeatherCubit>();
    return Drawer(
      child: ListView(
        children: <Widget>[
          Container(
            color: Colors.lightBlue,
            height: 55,
            child: DrawerHeader(child: Text(AppStrings.sortBy)),
          ),
          InkWell(
            child: ListTile(
              onTap: () {
                final weatherHourly = weatherCubit.getHourlyWeatherMode() as List<WeatherMode>;
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(
                      weatherMode: weatherHourly,
                      title: AppStrings.homeTitle,
                    ),
                  ),
                );
              },
              leading: Icon(Icons.import_export),
              title: Text(AppStrings.hourlyForecastMode),
            ),
          ),
          InkWell(
            child: ListTile(
              onTap: () {
                final weatherDaily = weatherCubit.getDailyWeatherMode() as List<WeatherMode>;
                MaterialPageRoute(
                  builder: (context) => HomePage(
                    weatherMode: weatherDaily,
                    title: AppStrings.homeTitle,
                  ),
                );
                Navigator.pop(context);
              },
              leading: Icon(Icons.import_export),
              title: Text(AppStrings.dailyForecastMode),
            ),
          ),
        ],
      ),
    );
  }

}