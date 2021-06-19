import 'package:geolocator/geolocator.dart';

class AppStrings {
  AppStrings._();
  static const home_title = "Weather Forecast";
  static const baseUrl = "https://api.openweathermap.org/data/2.5/onecall?lat=33.44&lon=-94.04&exclude=current,minutely,alerts&appid=af4e7f95776757d76316b913360f8fa6";
  static const startUrl = "https://api.openweathermap.org/data/2.5/onecall?";
  static const castMode = "current,minutely,alerts";
  static const lat = '0.0';
  static const lon = '0.0';
  static const appId = "af4e7f95776757d76316b913360f8fa6";
  //static const url = '$baseUrl?lat=${position.latitude.toString()}&lon=${position.latitude}&APPID=$appId';
}
