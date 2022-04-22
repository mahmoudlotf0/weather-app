import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weatherapp/providers/weather_provider.dart';

class ThemeManager {
  static ThemeData getThemeData(BuildContext context) {
    return ThemeData(
      primarySwatch: Provider.of<WeatherProvider>(context).getColorTheme(),
    );
  }
}
