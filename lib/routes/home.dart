import 'package:flutter/material.dart';
import 'package:seminar_project/classes/weather_info.dart';
import 'package:seminar_project/classes/weather_info_row.dart';
import 'package:weather_icons/weather_icons.dart';
import 'package:seminar_project/classes/weathercodes.dart';

/// Main Widget for Displaying data about weather
///
/// Displays the latitude/longitude of a location with a 7-day forecast
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};

  // Creates the Widgets for the 7-day forecast
  List<Widget> createWeatherRows() {
    List<int> weatherCodes = data['weatherInfo'].weathercodes;
    List<DateTime> days = data['weatherInfo'].days;
    List<Widget> retval = [];

    for (int i = 0; i < weatherCodes.length; i++) {
      retval
          .add(WeatherInfoRow(weathercode: weatherCodes[i], dateTime: days[i]));
    }
    return retval;
  }

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context)!.settings.arguments as Map;
    // print('Data u home:${data['weatherInfo']}');
    return Scaffold(
      body: Container(
        child: Stack(children: [
          ShaderMask(
            shaderCallback: (rect) {
              return const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.black, Colors.transparent])
                  .createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
            },
            blendMode: BlendMode.dstIn,
            child: Image.asset(
              'assets/images/stormy.jpg',
              fit: BoxFit.contain,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Lat: ${data['weatherInfo'].latitude}',
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.w800),
                ),
                Text(
                  'Lon: ${data['weatherInfo'].longitude}',
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.w800),
                ),
                const SizedBox(height: 8),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.black.withOpacity(0.5)),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: createWeatherRows()),
                  ),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
