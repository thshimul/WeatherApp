import 'dart:convert';
import 'package:get/get_connect/connect.dart';
import '../models/current_weather_response.dart';
import '../models/forecast_weather_model.dart';

class WeatherRepository extends GetConnect {

  Future<CurrentWeatherResponse?> currentWeather(lat,lon) async {
     String weatherURL="https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$lon&units=metric&appid=4712834acf4824073f97ba9a1952c0de";
    try {
      final response = await get(
          weatherURL
      ).timeout(const Duration(seconds: 60));
      print(response.toString());
      print("current repo");
      print(lat.toString());

      if (response.statusCode == 200) {
        var json = response.body;
        var jsonDataEncode = jsonEncode(json);
        print(jsonDataEncode);
        return currentWeatherResponseFromJson(jsonDataEncode);
      }

      else {
        var a = response.body["message"];
        //showCustomSnackBar(a.toString(), true);

      }
    } on Exception {
      return null;
    }
    return null;
  }

  Future<ForecastWeatherResponse?> forecastWeather(lat,lon) async {
    String forecastURL="https://api.weatherbit.io/v2.0/forecast/daily?lat=$lat&lon=$lon&key=54c3b70102f1443195744167672e1ba5";
   // String forecastURL="https://jsonkeeper.com/b/VALV";
    try {
      final response = await get(
          forecastURL
      ).timeout(const Duration(seconds: 60));
      print(response.toString());
      print("forecast repo");
      print(lon.toString());

      if (response.statusCode == 200) {
        var json = response.body;
        var jsonDataEncode = jsonEncode(json);
        print("hi");
        print(forecastWeatherResponseFromJson(jsonDataEncode));
        return forecastWeatherResponseFromJson(jsonDataEncode);
      }

      else {
        var a = response.body["message"];
        //showCustomSnackBar(a.toString(), true);

      }
    } on Exception {
      return null;
    }
    return null;
  }
}
