import 'package:weather_app/data/core/credentials.dart';

enum WeatherClientPath {
  current,
  forecast,
  history;

  String get path {
    switch (this) {
      case WeatherClientPath.current:
        return '/v1/current.json';
      case WeatherClientPath.forecast:
        return '/v1/forecast.json';
      case WeatherClientPath.history:
        return '/v1/history.json';
    }
  }

  Uri get baseUri => Uri.https(
    'api.weatherapi.com',
    '',
    <String, dynamic>{
      'key': Keys.weatherApiKey,
      'aqi': 'yes',
    },
  );

  Uri getUri([String? query]) {
    if (query == null) {
      return Uri.https(
        baseUri.authority,
        path,
        baseUri.queryParameters,
      );
    }

    return Uri.https(
      baseUri.authority,
      WeatherClientPath.current.path,
      <String, dynamic>{...baseUri.queryParameters, 'q': query},
    );
  }
}
