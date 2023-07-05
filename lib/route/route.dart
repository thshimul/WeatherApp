import 'package:get/get.dart';

import '../view/weather_page.dart';


abstract class Routes {
  static const String weather = '/weather';
}

abstract class AppPages {
  // static String initial = Routes.ROOT;

  static final routes = [

    GetPage(
      name: Routes.weather,
      page: () => WeatherPage(),
    ),
  ];
}
