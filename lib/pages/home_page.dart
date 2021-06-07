import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_forecast/cubit/geolocation/geolocation_cubit.dart';
import 'package:weather_forecast/cubit/geolocation/geolocation_cubit.dart';
import 'package:weather_forecast/cubit/geolocation/geolocation_cubit.dart';
import 'package:weather_forecast/cubit/weather/weather_cubit.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Position? _currentPosition;

  @override
  Widget build(BuildContext context) {
    final weather = context.read<WeatherCubit>();
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
        body: BlocBuilder<GeolocationCubit, GeolocationState>(
            builder: (context, state) {
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                if (state.status == GeolocationStatus.changed){
                 return Text(

                }
              ],
            ),
          );
        },)
        // floatingActionButton: FloatingActionButton(
        //   child: Text("Get location"),
        //   onPressed: () {_getCurrentLocation();},
        // ),
        );
  }

  Widget buildGeo(BuildContext context) {
    final geoCubit = BlocProvider.of(context).geolocationBloc;
    var position = geoCubit.getGeolocation();
    return Text("LAT: ${status.position.latitude}, LNG: ${_currentPosition!.longitude}");
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
