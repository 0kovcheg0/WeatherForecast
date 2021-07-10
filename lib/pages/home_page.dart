import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_forecast/api/models/weather_mode.dart';
import 'package:weather_forecast/cubit/weather/weather_cubit.dart';
import 'package:weather_forecast/pages/side_menu.dart';
import 'package:weather_forecast/resources/app_strings.dart';
import 'package:weather_forecast/views/weather_view.dart';

class HomePage extends StatefulWidget {
  final String title;
  final List<WeatherMode>? weatherMode;

  HomePage({Key? key, required this.title, this.weatherMode}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideMenu(),
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
              return _buildLoading();
            case WeatherStatus.loaded:
              final weather = state.weatherMode;
              if (weather != null) {
                return _buildWeatherList(weather);
              } else {
                return Text("List not found");
              }
            default:
              return Text(AppStrings.defaultMessage);
          }
        },
      ),
    );
  }

  Widget _buildWeatherList(List<WeatherMode> mode) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          pinned: true,
          expandedHeight: 200,
          flexibleSpace: FlexibleSpaceBar(
            title: Text(
              AppStrings.homeTitle,
              textAlign: TextAlign.center,
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
            background: Image.network(
              AppStrings.weatherAppBar,
              fit: BoxFit.fill,
            ),
            centerTitle: true,
            collapseMode: CollapseMode.parallax,
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            List.generate(
              mode.length,
              (index) => WeatherView(weatherMode: mode[index],),
            ),
          ),
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
