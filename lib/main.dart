import 'package:flutter/material.dart';
import 'package:weather_forecast/app.dart';

import 'service_locator.dart' as di;

void main() async {
  await di.setup();
  runApp(App());
}
