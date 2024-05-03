import 'dart:convert';

class CurrentWeatherModel {
  final double lastUpdatedEpoch;
  final double temperatureCelsius;
  final double temperatureFahrenheit;
  final double windMph;
  final double windKph;
  final String windDirection;
  final double humidity;
  final double cloudiness;
  final double uv;
  final double pressureMilibars;
  final double pressureInches;
  final String conditionText;
  final int aqi;
  CurrentWeatherModel({
    required this.lastUpdatedEpoch,
    required this.temperatureCelsius,
    required this.temperatureFahrenheit,
    required this.windMph,
    required this.windKph,
    required this.windDirection,
    required this.humidity,
    required this.cloudiness,
    required this.uv,
    required this.pressureMilibars,
    required this.pressureInches,
    required this.conditionText,
    required this.aqi,
  });

  CurrentWeatherModel copyWith({
    double? lastUpdatedEpoch,
    double? temperatureCelsius,
    double? temperatureFahrenheit,
    double? windMph,
    double? windKph,
    String? windDirection,
    double? humidity,
    double? cloudiness,
    double? uv,
    double? pressureMilibars,
    double? pressureInches,
    String? conditionText,
    int? aqi,
  }) {
    return CurrentWeatherModel(
      lastUpdatedEpoch: lastUpdatedEpoch ?? this.lastUpdatedEpoch,
      temperatureCelsius: temperatureCelsius ?? this.temperatureCelsius,
      temperatureFahrenheit:
          temperatureFahrenheit ?? this.temperatureFahrenheit,
      windMph: windMph ?? this.windMph,
      windKph: windKph ?? this.windKph,
      windDirection: windDirection ?? this.windDirection,
      humidity: humidity ?? this.humidity,
      cloudiness: cloudiness ?? this.cloudiness,
      uv: uv ?? this.uv,
      pressureMilibars: pressureMilibars ?? this.pressureMilibars,
      pressureInches: pressureInches ?? this.pressureInches,
      conditionText: conditionText ?? this.conditionText,
      aqi: aqi ?? this.aqi,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'last_updated_epoch': lastUpdatedEpoch,
      'temp_c': temperatureCelsius,
      'temp_f': temperatureFahrenheit,
      'wind_mph': windMph,
      'wind_kph': windKph,
      'wind_dir': windDirection,
      'humidity': humidity,
      'cloud': cloudiness,
      'uv': uv,
      'pressure_mb': pressureMilibars,
      'pressure_in': pressureInches,
      'condition_text': conditionText,
      'aqi': aqi,
    };
  }

  factory CurrentWeatherModel.fromMap(Map<String, dynamic> map) {
    return CurrentWeatherModel(
      lastUpdatedEpoch: map['last_updated_epoch']?.toDouble() ?? 0.0,
      temperatureCelsius: map['temp_c']?.toDouble() ?? 0.0,
      temperatureFahrenheit: map['temp_f']?.toDouble() ?? 0.0,
      windMph: map['wind_mph']?.toDouble() ?? 0.0,
      windKph: map['wind_kph']?.toDouble() ?? 0.0,
      windDirection: map['wind_dir'] ?? '',
      humidity: map['humidity']?.toDouble() ?? 0.0,
      cloudiness: map['cloud']?.toDouble() ?? 0.0,
      uv: map['uv']?.toDouble() ?? 0.0,
      pressureMilibars: map['pressure_mb']?.toDouble() ?? 0.0,
      pressureInches: map['pressure_in']?.toDouble() ?? 0.0,
      conditionText: map['condition_text'] ?? '',
      aqi: map['aqi']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory CurrentWeatherModel.fromJson(String source) =>
      CurrentWeatherModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'CurrentWeather(lastUpdatedEpoch: $lastUpdatedEpoch, temperatureCelsius: $temperatureCelsius, temperatureFahrenheit: $temperatureFahrenheit, windMph: $windMph, windKph: $windKph, windDirection: $windDirection, humidity: $humidity, cloudiness: $cloudiness, uv: $uv, pressureMilibars: $pressureMilibars, pressureInches: $pressureInches, conditionText: $conditionText, aqi: $aqi)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CurrentWeatherModel &&
        other.lastUpdatedEpoch == lastUpdatedEpoch &&
        other.temperatureCelsius == temperatureCelsius &&
        other.temperatureFahrenheit == temperatureFahrenheit &&
        other.windMph == windMph &&
        other.windKph == windKph &&
        other.windDirection == windDirection &&
        other.humidity == humidity &&
        other.cloudiness == cloudiness &&
        other.uv == uv &&
        other.pressureMilibars == pressureMilibars &&
        other.pressureInches == pressureInches &&
        other.conditionText == conditionText &&
        other.aqi == aqi;
  }

  @override
  int get hashCode {
    return lastUpdatedEpoch.hashCode ^
        temperatureCelsius.hashCode ^
        temperatureFahrenheit.hashCode ^
        windMph.hashCode ^
        windKph.hashCode ^
        windDirection.hashCode ^
        humidity.hashCode ^
        cloudiness.hashCode ^
        uv.hashCode ^
        pressureMilibars.hashCode ^
        pressureInches.hashCode ^
        conditionText.hashCode ^
        aqi.hashCode;
  }
}
