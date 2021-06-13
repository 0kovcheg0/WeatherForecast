import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_forecast/api/models/weather_model.dart';
import 'package:weather_forecast/cubit/geolocation/geolocation_cubit.dart';
import 'package:weather_forecast/cubit/weather/weather_cubit.dart';
import 'package:weather_forecast/pages/side_menu.dart';
import 'package:weather_forecast/views/weather_list_view.dart';

class HomePage extends StatefulWidget {

  HomePage({Key? key, required this.title})
      : super(key: key);

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
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocConsumer<WeatherCubit, WeatherState>(
              listener: (context, state) {
                if (state.status == WeatherStatus.error) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(state.message!),
                    ),
                  );
                }
              },
              builder: (context, state) {
                switch (state.status) {
                  case WeatherStatus.loaded:
                      final weather = state.weather;
                      return buildWeatherList(weather!);
                  case WeatherStatus.loading:
                    return buildLoading();
                  case WeatherStatus.initial:
                    return buildLoading();
                      default:
                    return Text("Lat: 99, Lon: 95");
                }
              },
            )
          ],
        ),
      ),
    );
    // floatingActionButton: FloatingActionButton(
    //   child: Text("Get location"),
    //   onPressed: () {_getCurrentLocation();},
    // ),
    //);
  }

  Widget buildWeatherList(List<WeatherModel> weather) {
    return ListView.builder(
      itemCount: weather.length,
      itemBuilder: (context, index) {
        return Container(
          width: double.infinity,
          height: 50.0,
          color: Colors.white,
          child: Row(
            children: [
              Expanded(
                child: WeatherListView(hourly: weather[index].hourly),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget buildLoading() {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

// _getCurrentLocation() {
//   Geolocator
//       .getCurrentPosition(desiredAccuracy: LocationAccuracy.best, forceAndroidLocationManager: true)
//       .then((Position position) {
//     setState(() {
//       _currentPosition = position;
//     });
//   }).catchError((e) {
//     print(e);
//   });
// }
}
