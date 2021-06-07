import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_forecast/api/api_client.dart';
import 'package:weather_forecast/cubit/geolocation/geolocation_cubit.dart';
import 'package:weather_forecast/cubit/weather/weather_cubit.dart';
import 'package:weather_forecast/pages/home_page.dart';

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: MultiBlocProvider(
          providers: [BlocProvider(
            create: (BuildContext context) => WeatherCubit(ApiClient()),),
            BlocProvider(
              create: (BuildContext context) => GeolocationCubit(),),
          ],
          child: HomePage(title: 'Flutter Demo Home Page'),
        )

    );
  }
}

