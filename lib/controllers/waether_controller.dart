
import 'dart:async';

import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';

import '../models/current_weather_response.dart';
import '../models/forecast_weather_model.dart';
import '../repository/weather_repository.dart';

class WeatherController extends GetxController{
  late WeatherRepository weatherRepository;
  final currentWeatherData = CurrentWeatherResponse().obs;
  final forecastWeatherData = ForecastWeatherResponse().obs;
  var flag=false.obs;


  Position? position;
  var lat="".obs;
  var lon="".obs;
  determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }
    position = await Geolocator.getCurrentPosition();
    lat.value = position!.latitude.toString();
    lon.value = position!.longitude.toString();
    print(lat.value);
    print(lon.value);

  }

  @override
  void onInit() {
    super.onInit();
    determinePosition();
    weatherRepository=WeatherRepository();
    Timer(const Duration(seconds: 30), () {
      getCurrentWeather();
    });
    Timer(const Duration(seconds: 30), () {
      getForecastWeather();
    });

  }
  @override
  void onReady() {
    super.onReady();


  }
var cityName="".obs;
var weather="".obs;
var temperature="".obs;
var humidity="".obs;
var icon="".obs;
var iconData="".obs;

  void getCurrentWeather() async {
    try {
      await weatherRepository.currentWeather(lat.value.toString(),lon.value.toString())?.then((value) {
        if (value != null) {
          currentWeatherData.value = value!;
        }
           cityName.value=currentWeatherData.value.name.toString();
           weather.value=currentWeatherData.value.weather![0].main.toString();
           temperature.value=currentWeatherData.value.main!.temp.toString();
           humidity.value=currentWeatherData.value.main!.humidity.toString();
           iconData.value="https://openweathermap.org/img/w/${currentWeatherData.value.weather![0].icon.toString()}.png";

      });

      print(cityName.value);
      print(weather.value);
      print(temperature.value);
      print(humidity.value);
      print(icon.value);

    } catch (err) {

    } finally {

    }
  }
  var cityNameList=[].obs;
  void getForecastWeather() async {
    try {
      await weatherRepository.forecastWeather(lat.value.toString(),lon.value.toString())?.then((value) {

          forecastWeatherData.value = value!;
          print("sakib$value");

          for(int i=0;i<5;i++)
            {


            }

      });


    } catch (err) {

    } finally {
      print("shimul");
    }
  }

void changeCToF(){
    flag.value=true;
}
  void changeFToC(){
    flag.value=false;
  }
}