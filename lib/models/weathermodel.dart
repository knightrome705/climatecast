class Weather {
  Location? location;
  Current? current;
  Condition? condition;

  Weather({required this.location, required this.current, required this.condition});

  factory Weather.fromJson(Map<String, dynamic> json) {
    return Weather(
      current: json['current'] != null ? Current.fromJson(json['current']) : null,
      location: json['location'] != null ? Location.fromJson(json['location']) : null,
      condition: json['condition'] != null ? Condition.fromJson(json['condition']) : null,
    );
  }
}

class Location {
  String? name, region, country, tz_id, localtime;
  double? lat, lon, localtime_epoch;

  Location({
    required this.name,
    required this.country,
    required this.localtime,
    required this.region,
    required this.tz_id,
    required this.lat,
    required this.localtime_epoch,
    required this.lon,
  });

  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
      name: json['name'],
      region: json['region'],
      country: json['country'],
      lat: json['lat']?.toDouble(),
      lon: json['lon']?.toDouble(),
      tz_id: json['tz_id'],
      localtime: json['localtime'],
      localtime_epoch: json['localtime_epoch']?.toDouble(),
    );
  }
}

class Current {
  double? last_updated_epoch,
      temp_c,
      temp_f,
      wind_mph,
      pressure_in,
      feelslike_c,
      feelslike_f,
      gust_mph,
      gust_kph;
  Condition? condition;
  int? day;

  Current({
    required this.condition,
    required this.day,
    required this.feelslike_c,
    required this.feelslike_f,
    required this.gust_kph,
    required this.gust_mph,
    required this.last_updated_epoch,
    required this.pressure_in,
    required this.temp_c,
    required this.temp_f,
    required this.wind_mph,
  });

  factory Current.fromJson(Map<String, dynamic> json) {
    return Current(
      condition: json['condition'] != null ? Condition.fromJson(json['condition']) : null,
      day: json['day'],
      feelslike_c: json['feelslike_c']?.toDouble(),
      feelslike_f: json['feelslike_f']?.toDouble(),
      gust_kph: json['gust_kph']?.toDouble(),
      gust_mph: json['gust_mph']?.toDouble(),
      last_updated_epoch: json['last_updated_epoch']?.toDouble(),
      pressure_in: json['pressure_in']?.toDouble(),
      temp_c: json['temp_c']?.toDouble(),
      temp_f: json['temp_f']?.toDouble(),
      wind_mph: json['wind_mph']?.toDouble(),
    );
  }
}

class Condition {
  String? text, icon;
  int? code;

  Condition({
    required this.icon,
    required this.code,
    required this.text,
  });

  factory Condition.fromJson(Map<String, dynamic> json) {
    return Condition(
      icon: json['icon'],
      code: json['code'],
      text: json['text'],
    );
  }
}
