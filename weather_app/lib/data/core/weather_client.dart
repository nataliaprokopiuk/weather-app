import 'package:http/http.dart';
import 'package:weather_app/data/core/http_client.dart';
import 'package:weather_app/data/core/weather_client_path.dart';
import 'package:weather_app/data/current/models/current.dart';

class WeatherClient extends HTTPClient {
  Future<Current> getCurrent(String location) async {
    final response = await get(WeatherClientPath.current.getUri(location));

    return Current.fromJson(response.body);
  }
}