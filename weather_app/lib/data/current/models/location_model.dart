import 'dart:convert';

class Location {
  final String name;
  final String region;
  final String country;
  final double lat;
  final double lon;
  final double localTimeEpoch;

  Location({
    required this.name,
    required this.region,
    required this.country,
    required this.lat,
    required this.lon,
    required this.localTimeEpoch,
  });

  Location copyWith({
    String? name,
    String? region,
    String? country,
    double? lat,
    double? lon,
    double? localTimeEpoch,
  }) {
    return Location(
      name: name ?? this.name,
      region: region ?? this.region,
      country: country ?? this.country,
      lat: lat ?? this.lat,
      lon: lon ?? this.lon,
      localTimeEpoch: localTimeEpoch ?? this.localTimeEpoch,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'region': region,
      'country': country,
      'lat': lat,
      'lon': lon,
      'localtime_epoch': localTimeEpoch,
    };
  }

  factory Location.fromMap(Map<String, dynamic> map) {
    return Location(
      name: map['name'] ?? '',
      region: map['region'] ?? '',
      country: map['country'] ?? '',
      lat: map['lat']?.toDouble() ?? 0.0,
      lon: map['lon']?.toDouble() ?? 0.0,
      localTimeEpoch: map['localtime_epoch']?.toDouble() ?? 0.0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Location.fromJson(String source) =>
      Location.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Location(name: $name, region: $region, country: $country, lat: $lat, lon: $lon, localTimeEpoch: $localTimeEpoch)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Location &&
        other.name == name &&
        other.region == region &&
        other.country == country &&
        other.lat == lat &&
        other.lon == lon &&
        other.localTimeEpoch == localTimeEpoch;
  }

  @override
  int get hashCode {
    return name.hashCode ^
        region.hashCode ^
        country.hashCode ^
        lat.hashCode ^
        lon.hashCode ^
        localTimeEpoch.hashCode;
  }
}
