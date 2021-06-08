import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_forecast/cubit/geolocation/geolocation_cubit.dart';
import 'package:weather_forecast/cubit/weather/weather_cubit.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final weather = context.read<WeatherCubit>();

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocConsumer<GeolocationCubit, GeolocationState>(
              builder: (context, state) {
                switch (state.status) {
                  case GeolocationStatus.loaded:
                    return Text(
                        'Lat: ${state.position!.latitude}, Lon: ${state.position!.longitude}');
                  default:
                    return Text("Lat: 99, Lon: 95");
                }
              },
              listener: (context, state) {
                if (state.status == GeolocationStatus.error) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(state.message!),
                    ),
                  );
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
