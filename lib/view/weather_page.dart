import 'package:conversion_units/conversion_units.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../controllers/waether_controller.dart';

class WeatherPage extends StatelessWidget {
 WeatherPage({super.key});

  WeatherController controller=Get.put(WeatherController());

  @override
  Widget build(BuildContext context) {
    return Obx(
        ()=>RefreshIndicator(
              onRefresh: (){
                    controller.getCurrentWeather();
                    controller.getForecastWeather();
                    controller.determinePosition();
                return Future.value(true);
              },
              child: Scaffold(
                backgroundColor:  Colors.white,
                appBar: AppBar(
                  title: const Center(child: Text("Weather")),
                ),
                body: SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  child: Container(
                    decoration: const BoxDecoration(
                      image:DecorationImage(
                        image: AssetImage('assets/images/sky.png'),
                        fit: BoxFit.fill,
                      )
                    ),
                    width: Get.width,
                    height: Get.height,
                    padding: const EdgeInsets.only(left: 16, right: 16,),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            width: Get.width,
                            height: Get.height*.3,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              gradient: const LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [
                                  Color(0xFF135658),
                                  Color(0xFF0A3132),

                                ],

                              ),
                            ),

                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left: 15.0,top: 5),
                                      child: Text(
                                       controller.cityName.value.toString(),
                                        style: const TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ), 
                                    Text(
                                      DateFormat('kk:mm:ss\nEEE d MMM').format(DateTime.now()),
                                      style: const TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                    
                                  ],
                                ),

                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0,top: 5,bottom: 5),
                                  child: Row(
                                    children: [
                                      Image.network(controller.iconData.value.toString(),
                                        height: 50,
                                        width: 50,),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          controller.weather.value.toString(),
                                          style: const TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: Row(
                                    children: [
                                      controller.flag.value==false?
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                            controller.temperature.value.toString(),
                                          style: const TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ):
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          Celsius.toFahrenheit(double.parse(controller.temperature.value.toString())).toStringAsFixed(0),
                                          style: const TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: (){
                                          controller.changeFToC();
                                        },
                                        child:  Text(
                                         "C",
                                          style: controller.flag.value==false?const TextStyle(
                                            color: Colors.white,
                                          ):const TextStyle(
                                            color: Colors.black,
                                        ),
                                      ),),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 10.0,right: 10),
                                        child: Container(
                                          height: 10,
                                          width: 2,
                                          decoration: const BoxDecoration(
                                            color: Colors.black
                                          ),
                                        ),
                                      ),
                                      GestureDetector(
                                        onTap: (){
                                         controller.changeCToF();
                                        },
                                        child:  Text(
                                          "F",
                                          style: controller.flag.value==true?const TextStyle(
                                            color: Colors.white,
                                          ):const TextStyle(
                                            color: Colors.black,
                                          )
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0,top: 5,bottom: 5),
                                  child: Row(
                                    children: [
                                      const Text(
                                        "Humidity",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          controller.humidity.value.toString(),
                                          style: const TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),


                              ],
                            ),
                          ),
                        ),
                        Center(
                          child: const Padding(
                            padding: EdgeInsets.only(top: 10.0,bottom: 10),
                            child: Text(
                            "Forecast for next 5 days",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 220,
                          child: ListView.builder(
                            itemCount: 5,
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (BuildContext context, int index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  width: 150,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    gradient: const LinearGradient(
                                      begin: Alignment.topRight,
                                      end: Alignment.bottomLeft,
                                      colors: [
                                        Color(0xFF135658),
                                        Color(0xFF0A3132),

                                      ],

                                    ),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.only(left: 15.0,top: 5,bottom: 5),
                                        child: Row(
                                          children: [
                                            Image.network(controller.iconData.value.toString(),
                                              height: 50,
                                              width: 50,),
                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Text("hello",
                                               // controller.forecastWeatherData.value.list![index].weather![0].main.toString(),
                                                style: const TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 8.0),
                                        child: Row(
                                          children: [
                                            controller.flag.value==false?
                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Text(
                                                controller.temperature.value.toString(),
                                                style: const TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ):
                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Text(
                                                Celsius.toFahrenheit(double.parse(controller.temperature.value.toString())).toStringAsFixed(0),
                                                style: const TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                            GestureDetector(
                                              onTap: (){
                                                controller.changeFToC();
                                              },
                                              child:  Text(
                                                "C",
                                                style: controller.flag.value==false?const TextStyle(
                                                  color: Colors.white,
                                                ):const TextStyle(
                                                  color: Colors.black,
                                                ),
                                              ),),
                                            Padding(
                                              padding: const EdgeInsets.only(left: 10.0,right: 10),
                                              child: Container(
                                                height: 10,
                                                width: 2,
                                                decoration: const BoxDecoration(
                                                    color: Colors.black
                                                ),
                                              ),
                                            ),
                                            GestureDetector(
                                              onTap: (){
                                                controller.changeCToF();
                                              },
                                              child:  Text(
                                                  "F",
                                                  style: controller.flag.value==true?const TextStyle(
                                                    color: Colors.white,
                                                  ):const TextStyle(
                                                    color: Colors.black,
                                                  )
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 15.0,top: 5,bottom: 5),
                                        child: Row(
                                          children: [
                                            const Text(
                                              "Humidity",
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Text(
                                                controller.humidity.value.toString(),
                                                style: const TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),


                                    ],
                                  ),
                                ),
                              );
                            },),
                        )
                      ],
                    ),
                  ),
                ), // Column
              ),

      ),
    );

  }


}
