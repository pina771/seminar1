import 'dart:convert';
import 'weathercodes.dart';
import 'package:http/http.dart';

/// Class for encapsulating weather information
class WeatherInfo {
  String timezoneRegion;
  String timezoneCity;
  double latitude;
  double longitude;
  List<int> weathercodes = []; // lista kodova za vrijeme
  List<DateTime> days = [];

  /// Get weather info from Open-Meteo API, https://open-meteo.com/en
  ///
  /// Only gets the 7 day weather codes for specific latitude/longitude
  Future<void> getWeather() async {
    // Get weather info from Open-Meteo API
    var url = Uri.parse(
        'https://api.open-meteo.com/v1/forecast?latitude=52.5235&longitude=13.4115&daily=weathercode&time'
            'zone=$timezoneRegion%2F$timezoneCity');
    Response response = await get(url);
    Map data = jsonDecode(response.body);
    Map daily = data['daily'];
    weathercodes = daily['weathercode'].cast<int>();
    dynamic tmp = daily['time'].cast<String>();
    tmp.forEach((element) => {days.add(DateTime.parse(element))});
  }

  WeatherInfo(
      {required this.timezoneRegion,
      required this.timezoneCity,
      required this.latitude,
      required this.longitude});
}
