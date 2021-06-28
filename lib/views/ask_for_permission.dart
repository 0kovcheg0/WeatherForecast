// import 'package:android_intent/android_intent.dart';
// import 'package:flutter/material.dart';
// import 'package:geolocator/geolocator.dart';
// import 'package:permission_handler/permission_handler.dart';
// import 'package:permission_handler/permission_handler.dart';
// !Ask for location permission
// class AskForPermission extends StatefulWidget {
//   Permission permission;
//   AskForPermission({
//     required this.permission
// });
//   @override
//   _AskForPermissionState createState() => _AskForPermissionState(permission: this.permission);
// }
//
// class _AskForPermissionState extends State<AskForPermission> {
//   Permission permission;
//
//   _AskForPermissionState({required this.permission});
//
//
//   _fetchWeatherWithLocation() async {
//     var permissionResult = await Permission.locationWhenInUse.status;
//
//     switch (permissionResult) {
//       case PermissionStatus.restricted:
//       case PermissionStatus.permanentlyDenied:
//         print('location permission denied');
//         _showLocationDeniedDialog();
//         break;
//
//       case PermissionStatus.denied:
//         await Permission.locationWhenInUse.request();
//         _fetchWeatherWithLocation();
//         break;
//
//       case PermissionStatus.limited:
//       case PermissionStatus.granted:
//         break;
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     throw UnimplementedError();
//   }
//
//
// }
