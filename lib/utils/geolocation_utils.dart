import 'package:geolocator/geolocator.dart';

abstract class GeolocationUtils {
  static Future<Position> getPosition() async {
     return await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.best,
        forceAndroidLocationManager: true,
      );

  }
}
