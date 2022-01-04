import 'package:flutter/material.dart';
import 'package:seminar_project/classes/weather_info.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  WeatherInfo data =
      WeatherInfo(timezoneRegion: "Europe", timezoneCity:"Berlin", latitude: 43.51, longitude: 16.46);

  void init() async {
    await data.getWeather();
    Navigator.pushReplacementNamed(context, '/home', arguments: {'weatherInfo': data});
  }

  @override
  void initState() {
    super.initState();
    init();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey,
        body: Center(
          child: Text("Loading data..."),
        ));
  }
}
