import 'package:get_it/get_it.dart';
import 'package:weather_forecast/api/api_client.dart';

final getIt = GetIt.instance;

Future<void> setup() async {
  getIt.registerFactory<ApiClient>(() => ApiClient());
}
