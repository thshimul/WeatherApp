// // // To parse this JSON data, do
// // //
// // //     final forecastWeatherResponse = forecastWeatherResponseFromJson(jsonString);
// //
// // import 'dart:convert';
// //
// // ForecastWeatherResponse forecastWeatherResponseFromJson(String str) => ForecastWeatherResponse.fromJson(json.decode(str));
// //
// // String forecastWeatherResponseToJson(ForecastWeatherResponse data) => json.encode(data.toJson());
// //
// // class ForecastWeatherResponse {
// //   String? cod;
// //   int? message;
// //   int? cnt;
// //   List<ListElement>? list;
// //   City? city;
// //
// //   ForecastWeatherResponse({
// //     this.cod,
// //     this.message,
// //     this.cnt,
// //     this.list,
// //     this.city,
// //   });
// //
// //   factory ForecastWeatherResponse.fromJson(Map<String, dynamic> json) => ForecastWeatherResponse(
// //     cod: json["cod"],
// //     message: json["message"],
// //     cnt: json["cnt"],
// //     list: json["list"] == null ? [] : List<ListElement>.from(json["list"]!.map((x) => ListElement.fromJson(x))),
// //     city: json["city"] == null ? null : City.fromJson(json["city"]),
// //   );
// //
// //   Map<String, dynamic> toJson() => {
// //     "cod": cod,
// //     "message": message,
// //     "cnt": cnt,
// //     "list": list == null ? [] : List<dynamic>.from(list!.map((x) => x.toJson())),
// //     "city": city?.toJson(),
// //   };
// // }
// //
// // class City {
// //   int? id;
// //   String? name;
// //   Coord? coord;
// //   String? country;
// //   int? population;
// //   int? timezone;
// //   int? sunrise;
// //   int? sunset;
// //
// //   City({
// //     this.id,
// //     this.name,
// //     this.coord,
// //     this.country,
// //     this.population,
// //     this.timezone,
// //     this.sunrise,
// //     this.sunset,
// //   });
// //
// //   factory City.fromJson(Map<String, dynamic> json) => City(
// //     id: json["id"],
// //     name: json["name"],
// //     coord: json["coord"] == null ? null : Coord.fromJson(json["coord"]),
// //     country: json["country"],
// //     population: json["population"],
// //     timezone: json["timezone"],
// //     sunrise: json["sunrise"],
// //     sunset: json["sunset"],
// //   );
// //
// //   Map<String, dynamic> toJson() => {
// //     "id": id,
// //     "name": name,
// //     "coord": coord?.toJson(),
// //     "country": country,
// //     "population": population,
// //     "timezone": timezone,
// //     "sunrise": sunrise,
// //     "sunset": sunset,
// //   };
// // }
// //
// // class Coord {
// //   int? lat;
// //   int? lon;
// //
// //   Coord({
// //     this.lat,
// //     this.lon,
// //   });
// //
// //   factory Coord.fromJson(Map<String, dynamic> json) => Coord(
// //     lat: json["lat"],
// //     lon: json["lon"],
// //   );
// //
// //   Map<String, dynamic> toJson() => {
// //     "lat": lat,
// //     "lon": lon,
// //   };
// // }
// //
// // class ListElement {
// //   int? dt;
// //   MainClass? main;
// //   List<Weather>? weather;
// //   Clouds? clouds;
// //   Wind? wind;
// //   int? visibility;
// //   double? pop;
// //   Sys? sys;
// //   DateTime? dtTxt;
// //   Rain? rain;
// //
// //   ListElement({
// //     this.dt,
// //     this.main,
// //     this.weather,
// //     this.clouds,
// //     this.wind,
// //     this.visibility,
// //     this.pop,
// //     this.sys,
// //     this.dtTxt,
// //     this.rain,
// //   });
// //
// //   factory ListElement.fromJson(Map<String, dynamic> json) => ListElement(
// //     dt: json["dt"],
// //     main: json["main"] == null ? null : MainClass.fromJson(json["main"]),
// //     weather: json["weather"] == null ? [] : List<Weather>.from(json["weather"]!.map((x) => Weather.fromJson(x))),
// //     clouds: json["clouds"] == null ? null : Clouds.fromJson(json["clouds"]),
// //     wind: json["wind"] == null ? null : Wind.fromJson(json["wind"]),
// //     visibility: json["visibility"],
// //     pop: json["pop"]?.toDouble(),
// //     sys: json["sys"] == null ? null : Sys.fromJson(json["sys"]),
// //     dtTxt: json["dt_txt"] == null ? null : DateTime.parse(json["dt_txt"]),
// //     rain: json["rain"] == null ? null : Rain.fromJson(json["rain"]),
// //   );
// //
// //   Map<String, dynamic> toJson() => {
// //     "dt": dt,
// //     "main": main?.toJson(),
// //     "weather": weather == null ? [] : List<dynamic>.from(weather!.map((x) => x.toJson())),
// //     "clouds": clouds?.toJson(),
// //     "wind": wind?.toJson(),
// //     "visibility": visibility,
// //     "pop": pop,
// //     "sys": sys?.toJson(),
// //     "dt_txt": dtTxt?.toIso8601String(),
// //     "rain": rain?.toJson(),
// //   };
// // }
// //
// // class Clouds {
// //   int? all;
// //
// //   Clouds({
// //     this.all,
// //   });
// //
// //   factory Clouds.fromJson(Map<String, dynamic> json) => Clouds(
// //     all: json["all"],
// //   );
// //
// //   Map<String, dynamic> toJson() => {
// //     "all": all,
// //   };
// // }
// //
// // class MainClass {
// //   double? temp;
// //   double? feelsLike;
// //   double? tempMin;
// //   double? tempMax;
// //   int? pressure;
// //   int? seaLevel;
// //   int? grndLevel;
// //   int? humidity;
// //   double? tempKf;
// //
// //   MainClass({
// //     this.temp,
// //     this.feelsLike,
// //     this.tempMin,
// //     this.tempMax,
// //     this.pressure,
// //     this.seaLevel,
// //     this.grndLevel,
// //     this.humidity,
// //     this.tempKf,
// //   });
// //
// //   factory MainClass.fromJson(Map<String, dynamic> json) => MainClass(
// //     temp: json["temp"]?.toDouble(),
// //     feelsLike: json["feels_like"]?.toDouble(),
// //     tempMin: json["temp_min"]?.toDouble(),
// //     tempMax: json["temp_max"]?.toDouble(),
// //     pressure: json["pressure"],
// //     seaLevel: json["sea_level"],
// //     grndLevel: json["grnd_level"],
// //     humidity: json["humidity"],
// //     tempKf: json["temp_kf"]?.toDouble(),
// //   );
// //
// //   Map<String, dynamic> toJson() => {
// //     "temp": temp,
// //     "feels_like": feelsLike,
// //     "temp_min": tempMin,
// //     "temp_max": tempMax,
// //     "pressure": pressure,
// //     "sea_level": seaLevel,
// //     "grnd_level": grndLevel,
// //     "humidity": humidity,
// //     "temp_kf": tempKf,
// //   };
// // }
// //
// // class Rain {
// //   double? the3H;
// //
// //   Rain({
// //     this.the3H,
// //   });
// //
// //   factory Rain.fromJson(Map<String, dynamic> json) => Rain(
// //     the3H: json["3h"]?.toDouble(),
// //   );
// //
// //   Map<String, dynamic> toJson() => {
// //     "3h": the3H,
// //   };
// // }
// //
// // class Sys {
// //   String? pod;
// //
// //   Sys({
// //     this.pod,
// //   });
// //
// //   factory Sys.fromJson(Map<String, dynamic> json) => Sys(
// //     pod:json["pod"],
// //   );
// //
// //   Map<String, dynamic> toJson() => {
// //     "pod": pod,
// //   };
// // }
// //
// //
// //
// // class Weather {
// //   int? id;
// //   String? main;
// //   String? description;
// //   String? icon;
// //
// //   Weather({
// //     this.id,
// //     this.main,
// //     this.description,
// //     this.icon,
// //   });
// //
// //   factory Weather.fromJson(Map<String, dynamic> json) => Weather(
// //     id: json["id"],
// //     main:json["main"],
// //     description:json["description"],
// //     icon: json["icon"],
// //   );
// //
// //   Map<String, dynamic> toJson() => {
// //     "id": id,
// //     "main": main,
// //     "description": description,
// //     "icon": icon,
// //   };
// // }
// //
// //
// //
// //
// //
// //
// //
// // class Wind {
// //   double? speed;
// //   int? deg;
// //   double? gust;
// //
// //   Wind({
// //     this.speed,
// //     this.deg,
// //     this.gust,
// //   });
// //
// //   factory Wind.fromJson(Map<String, dynamic> json) => Wind(
// //     speed: json["speed"]?.toDouble(),
// //     deg: json["deg"],
// //     gust: json["gust"]?.toDouble(),
// //   );
// //
// //   Map<String, dynamic> toJson() => {
// //     "speed": speed,
// //     "deg": deg,
// //     "gust": gust,
// //   };
// // }
// //
// //
// // To parse this JSON data, do
// //
// //     final registrationResponse = registrationResponseFromJson(jsonString);
//
// import 'dart:convert';
//
// ForecastWeatherResponse forecastWeatherResponseFromJson(String str) => ForecastWeatherResponse.fromJson(json.decode(str));
//
// String forecastWeatherResponseJson(ForecastWeatherResponse data) => json.encode(data.toJson());
//
// class ForecastWeatherResponse {
//   String? cod;
//   int? message;
//   int? cnt;
//   List<ListElement>? list;
//   City? city;
//
//   ForecastWeatherResponse({
//     this.cod,
//     this.message,
//     this.cnt,
//     this.list,
//     this.city,
//   });
//
//   factory ForecastWeatherResponse.fromJson(Map<String, dynamic> json) => ForecastWeatherResponse(
//     cod: json["cod"],
//     message: json["message"],
//     cnt: json["cnt"],
//     list: json["list"] == null ? [] : List<ListElement>.from(json["list"]!.map((x) => ListElement.fromJson(x))),
//     city: json["city"] == null ? null : City.fromJson(json["city"]),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "cod": cod,
//     "message": message,
//     "cnt": cnt,
//     "list": list == null ? [] : List<dynamic>.from(list!.map((x) => x.toJson())),
//     "city": city?.toJson(),
//   };
// }
//
// class City {
//   int? id;
//   String? name;
//   Coord? coord;
//   String? country;
//   int? population;
//   int? timezone;
//   int? sunrise;
//   int? sunset;
//
//   City({
//     this.id,
//     this.name,
//     this.coord,
//     this.country,
//     this.population,
//     this.timezone,
//     this.sunrise,
//     this.sunset,
//   });
//
//   factory City.fromJson(Map<String, dynamic> json) => City(
//     id: json["id"],
//     name: json["name"],
//     coord: json["coord"] == null ? null : Coord.fromJson(json["coord"]),
//     country: json["country"],
//     population: json["population"],
//     timezone: json["timezone"],
//     sunrise: json["sunrise"],
//     sunset: json["sunset"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "id": id,
//     "name": name,
//     "coord": coord?.toJson(),
//     "country": country,
//     "population": population,
//     "timezone": timezone,
//     "sunrise": sunrise,
//     "sunset": sunset,
//   };
// }
//
// class Coord {
//   int? lat;
//   int? lon;
//
//   Coord({
//     this.lat,
//     this.lon,
//   });
//
//   factory Coord.fromJson(Map<String, dynamic> json) => Coord(
//     lat: json["lat"],
//     lon: json["lon"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "lat": lat,
//     "lon": lon,
//   };
// }
//
// class ListElement {
//   int? dt;
//   Main? main;
//   List<Weather>? weather;
//   Clouds? clouds;
//   Wind? wind;
//   int? visibility;
//   int? pop;
//   DateTime? dtTxt;
//
//   ListElement({
//     this.dt,
//     this.main,
//     this.weather,
//     this.clouds,
//     this.wind,
//     this.visibility,
//     this.pop,
//     this.dtTxt,
//   });
//
//   factory ListElement.fromJson(Map<String, dynamic> json) => ListElement(
//     dt: json["dt"],
//     main: json["main"] == null ? null : Main.fromJson(json["main"]),
//     weather: json["weather"] == null ? [] : List<Weather>.from(json["weather"]!.map((x) => Weather.fromJson(x))),
//     clouds: json["clouds"] == null ? null : Clouds.fromJson(json["clouds"]),
//     wind: json["wind"] == null ? null : Wind.fromJson(json["wind"]),
//     visibility: json["visibility"],
//     pop: json["pop"],
//     dtTxt: json["dt_txt"] == null ? null : DateTime.parse(json["dt_txt"]),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "dt": dt,
//     "main": main?.toJson(),
//     "weather": weather == null ? [] : List<dynamic>.from(weather!.map((x) => x.toJson())),
//     "clouds": clouds?.toJson(),
//     "wind": wind?.toJson(),
//     "visibility": visibility,
//     "pop": pop,
//     "dt_txt": dtTxt?.toIso8601String(),
//   };
// }
//
// class Clouds {
//   int? all;
//
//   Clouds({
//     this.all,
//   });
//
//   factory Clouds.fromJson(Map<String, dynamic> json) => Clouds(
//     all: json["all"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "all": all,
//   };
// }
//
// class Main {
//   double? temp;
//   double? feelsLike;
//   double? tempMin;
//   double? tempMax;
//   int? pressure;
//   int? seaLevel;
//   int? grndLevel;
//   int? humidity;
//   int? tempKf;
//
//   Main({
//     this.temp,
//     this.feelsLike,
//     this.tempMin,
//     this.tempMax,
//     this.pressure,
//     this.seaLevel,
//     this.grndLevel,
//     this.humidity,
//     this.tempKf,
//   });
//
//   factory Main.fromJson(Map<String, dynamic> json) => Main(
//     temp: json["temp"]?.toDouble(),
//     feelsLike: json["feels_like"]?.toDouble(),
//     tempMin: json["temp_min"]?.toDouble(),
//     tempMax: json["temp_max"]?.toDouble(),
//     pressure: json["pressure"],
//     seaLevel: json["sea_level"],
//     grndLevel: json["grnd_level"],
//     humidity: json["humidity"],
//     tempKf: json["temp_kf"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "temp": temp,
//     "feels_like": feelsLike,
//     "temp_min": tempMin,
//     "temp_max": tempMax,
//     "pressure": pressure,
//     "sea_level": seaLevel,
//     "grnd_level": grndLevel,
//     "humidity": humidity,
//     "temp_kf": tempKf,
//   };
// }
//
// class Weather {
//   int? id;
//   String? main;
//   String? description;
//   String? icon;
//
//   Weather({
//     this.id,
//     this.main,
//     this.description,
//     this.icon,
//   });
//
//   factory Weather.fromJson(Map<String, dynamic> json) => Weather(
//     id: json["id"],
//     main: json["main"],
//     description: json["description"],
//     icon: json["icon"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "id": id,
//     "main": main,
//     "description": description,
//     "icon": icon,
//   };
// }
//
// class Wind {
//   double? speed;
//   int? deg;
//   double? gust;
//
//   Wind({
//     this.speed,
//     this.deg,
//     this.gust,
//   });
//
//   factory Wind.fromJson(Map<String, dynamic> json) => Wind(
//     speed: json["speed"]?.toDouble(),
//     deg: json["deg"],
//     gust: json["gust"]?.toDouble(),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "speed": speed,
//     "deg": deg,
//     "gust": gust,
//   };
// }
// To parse this JSON data, do
//
//     final forecastWeatherResponse = forecastWeatherResponseFromJson(jsonString);

import 'dart:convert';

ForecastWeatherResponse forecastWeatherResponseFromJson(String str) => ForecastWeatherResponse.fromJson(json.decode(str));

String forecastWeatherResponseToJson(ForecastWeatherResponse data) => json.encode(data.toJson());

class ForecastWeatherResponse {
  String? cityName;
  String? countryCode;
  List<Datum>? data;
  int? lat;
  int? lon;
  String? stateCode;
  String? timezone;

  ForecastWeatherResponse({
    this.cityName,
    this.countryCode,
    this.data,
    this.lat,
    this.lon,
    this.stateCode,
    this.timezone,
  });

  factory ForecastWeatherResponse.fromJson(Map<String, dynamic> json) => ForecastWeatherResponse(
    cityName: json["city_name"],
    countryCode: json["country_code"],
    data: json["data"] == null ? [] : List<Datum>.from(json["data"]!.map((x) => Datum.fromJson(x))),
    lat: json["lat"],
    lon: json["lon"],
    stateCode: json["state_code"],
    timezone: json["timezone"],
  );

  Map<String, dynamic> toJson() => {
    "city_name": cityName,
    "country_code": countryCode,
    "data": data == null ? [] : List<dynamic>.from(data!.map((x) => x.toJson())),
    "lat": lat,
    "lon": lon,
    "state_code": stateCode,
    "timezone": timezone,
  };
}

class Datum {
  double? appMaxTemp;
  double? appMinTemp;
  int? clouds;
  int? cloudsHi;
  int? cloudsLow;
  int? cloudsMid;
  DateTime? datetime;
  double? dewpt;
  double? highTemp;
  double? lowTemp;
  dynamic maxDhi;
  double? maxTemp;
  double? minTemp;
  double? moonPhase;
  double? moonPhaseLunation;
  int? moonriseTs;
  int? moonsetTs;
  double? ozone;
  int? pop;
  double? precip;
  double? pres;
  int? rh;
  double? slp;
  int? snow;
  int? snowDepth;
  int? sunriseTs;
  int? sunsetTs;
  double? temp;
  int? ts;
  double? uv;
  DateTime? validDate;
  double? vis;
  Weather? weather;
  String? windCdir;
  String? windCdirFull;
  int? windDir;
  double? windGustSpd;
  double? windSpd;

  Datum({
    this.appMaxTemp,
    this.appMinTemp,
    this.clouds,
    this.cloudsHi,
    this.cloudsLow,
    this.cloudsMid,
    this.datetime,
    this.dewpt,
    this.highTemp,
    this.lowTemp,
    this.maxDhi,
    this.maxTemp,
    this.minTemp,
    this.moonPhase,
    this.moonPhaseLunation,
    this.moonriseTs,
    this.moonsetTs,
    this.ozone,
    this.pop,
    this.precip,
    this.pres,
    this.rh,
    this.slp,
    this.snow,
    this.snowDepth,
    this.sunriseTs,
    this.sunsetTs,
    this.temp,
    this.ts,
    this.uv,
    this.validDate,
    this.vis,
    this.weather,
    this.windCdir,
    this.windCdirFull,
    this.windDir,
    this.windGustSpd,
    this.windSpd,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
    appMaxTemp: json["app_max_temp"]?.toDouble(),
    appMinTemp: json["app_min_temp"]?.toDouble(),
    clouds: json["clouds"],
    cloudsHi: json["clouds_hi"],
    cloudsLow: json["clouds_low"],
    cloudsMid: json["clouds_mid"],
    datetime: json["datetime"] == null ? null : DateTime.parse(json["datetime"]),
    dewpt: json["dewpt"]?.toDouble(),
    highTemp: json["high_temp"]?.toDouble(),
    lowTemp: json["low_temp"]?.toDouble(),
    maxDhi: json["max_dhi"],
    maxTemp: json["max_temp"]?.toDouble(),
    minTemp: json["min_temp"]?.toDouble(),
    moonPhase: json["moon_phase"]?.toDouble(),
    moonPhaseLunation: json["moon_phase_lunation"]?.toDouble(),
    moonriseTs: json["moonrise_ts"],
    moonsetTs: json["moonset_ts"],
    ozone: json["ozone"]?.toDouble(),
    pop: json["pop"],
    precip: json["precip"]?.toDouble(),
    pres: json["pres"]?.toDouble(),
    rh: json["rh"],
    slp: json["slp"]?.toDouble(),
    snow: json["snow"],
    snowDepth: json["snow_depth"],
    sunriseTs: json["sunrise_ts"],
    sunsetTs: json["sunset_ts"],
    temp: json["temp"]?.toDouble(),
    ts: json["ts"],
    uv: json["uv"]?.toDouble(),
    validDate: json["valid_date"] == null ? null : DateTime.parse(json["valid_date"]),
    vis: json["vis"]?.toDouble(),
    weather: json["weather"] == null ? null : Weather.fromJson(json["weather"]),
    windCdir: json["wind_cdir"],
    windCdirFull: json["wind_cdir_full"],
    windDir: json["wind_dir"],
    windGustSpd: json["wind_gust_spd"]?.toDouble(),
    windSpd: json["wind_spd"]?.toDouble(),
  );

  Map<String, dynamic> toJson() => {
    "app_max_temp": appMaxTemp,
    "app_min_temp": appMinTemp,
    "clouds": clouds,
    "clouds_hi": cloudsHi,
    "clouds_low": cloudsLow,
    "clouds_mid": cloudsMid,
    "datetime": "${datetime!.year.toString().padLeft(4, '0')}-${datetime!.month.toString().padLeft(2, '0')}-${datetime!.day.toString().padLeft(2, '0')}",
    "dewpt": dewpt,
    "high_temp": highTemp,
    "low_temp": lowTemp,
    "max_dhi": maxDhi,
    "max_temp": maxTemp,
    "min_temp": minTemp,
    "moon_phase": moonPhase,
    "moon_phase_lunation": moonPhaseLunation,
    "moonrise_ts": moonriseTs,
    "moonset_ts": moonsetTs,
    "ozone": ozone,
    "pop": pop,
    "precip": precip,
    "pres": pres,
    "rh": rh,
    "slp": slp,
    "snow": snow,
    "snow_depth": snowDepth,
    "sunrise_ts": sunriseTs,
    "sunset_ts": sunsetTs,
    "temp": temp,
    "ts": ts,
    "uv": uv,
    "valid_date": "${validDate!.year.toString().padLeft(4, '0')}-${validDate!.month.toString().padLeft(2, '0')}-${validDate!.day.toString().padLeft(2, '0')}",
    "vis": vis,
    "weather": weather?.toJson(),
    "wind_cdir": windCdir,
    "wind_cdir_full": windCdirFull,
    "wind_dir": windDir,
    "wind_gust_spd": windGustSpd,
    "wind_spd": windSpd,
  };
}

class Weather {
  String? icon;
  String? description;
  int? code;

  Weather({
    this.icon,
    this.description,
    this.code,
  });

  factory Weather.fromJson(Map<String, dynamic> json) => Weather(
    icon: json["icon"],
    description: json["description"],
    code: json["code"],
  );

  Map<String, dynamic> toJson() => {
    "icon": icon,
    "description": description,
    "code": code,
  };
}
