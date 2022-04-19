import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_weather/weather_data.dart';

import 'weather.dart';

class WeatherScreenManager {
  final weatherNotifier = ValueNotifier<Weather>(Weather.sunny);
  final degreeNotifier = ValueNotifier<String>('-');
  final weatherData = WeatherData();

  void updateWeather() async {
    print('updating...');
    final degree = await weatherData.getDegree();
    degreeNotifier.value = '$degree°';

    weatherNotifier.value = await weatherData.getWeather();
  }
}
