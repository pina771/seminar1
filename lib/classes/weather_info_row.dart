import 'package:flutter/material.dart';
import 'package:seminar_project/classes/weathercodes.dart';
import 'package:weather_icons/weather_icons.dart';
import 'package:intl/intl.dart';

/// Widget used for representing data of one day in a 7-day forecast
///
/// Consists of :
///   - day of week ( Text )
///   - icon for the weathercode ( BoxedIcon )
///   - description for the weathercode ( Text)
class WeatherInfoRow extends StatelessWidget {
  final int weathercode;
  final DateTime dateTime;

  const WeatherInfoRow({Key? key, required this.weathercode, required this.dateTime}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(DateFormat('EEEE').format(dateTime).toString(), style: TextStyle(color:Colors.lightBlueAccent)),
            SizedBox(width: 8,),
            BoxedIcon(WeatherCodes.codes[weathercode]['icon'],
                color: Colors.white),
            Text(WeatherCodes.codes[weathercode]['text'],
                style: TextStyle(color: Colors.white, fontSize: 16)),
          ],
        ),
        SizedBox(height: 8)
      ],
    );
  }
}
