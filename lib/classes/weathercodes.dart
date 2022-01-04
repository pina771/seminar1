import 'package:weather_icons/weather_icons.dart';

class WeatherCodes {
  static Map codes = {
    0: {
      "text": "Clear Sky",
      "icon": WeatherIcons.day_sunny
    },
    1: {"text":"Mainly clear","icon": WeatherIcons.day_sunny},
    2: {"text":"Partly cloudy","icon": WeatherIcons.cloudy},
    3: {"text":"Overcast", "icon": WeatherIcons.day_sunny_overcast},
    45: {"text":"Fog and depositing rime fog", "icon":WeatherIcons.fog},
    48: {"text":"Fog and depositing rime fog", "icon": WeatherIcons.fog},
    51: {"text":"Drizzle, light intensity"},
    53: {"text":"Drizzle, moderate intensity"},
    55: {"text":"Drizzle, dense intensity"},
    56: {"text":"Freezing drizzle, light intensity"},
    57: {"text":"Freezing drizzle, dense intensity"},
    61: {"text":"Rain, slight"},
    63: {"text":"Rain, moderate"},
    65: {"text":"Rain, heavy"},
    66: {"text":"Freezing rain, light intensity"},
    67: {"text":"Freezing rain, heavy intensity"},
    71: {"text":"Snow fall, slight", "icon":WeatherIcons.day_snow},
    73: {"text":"Snow fall, moderate", "icon":WeatherIcons.snow},
    75: {"text":"Snow fall, heavy", "icon":WeatherIcons.day_snow_thunderstorm},
    77: {"text":"Snow grains"},
    80: {"text":"Rain showers, slight", "icon": WeatherIcons.showers},
    81: {"text":"Rain showers, moderate", "icon": WeatherIcons.showers},
    82: {"text":"Rain showers, violent", "icon": WeatherIcons.storm_showers},
    85: {"text":"Snow showers, slight"},
    86: {"text":"Snow showers, heavy"},
    95: {"text":"Thunderstorm"},
    96: {"text":"Thunderstorm, slight hail"},
    99: {"text":"Thunderstorm, heavy hail"}
  };
}
