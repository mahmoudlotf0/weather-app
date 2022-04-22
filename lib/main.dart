import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weatherapp/Presentation/pages/home/home_page.dart';
import 'package:weatherapp/Presentation/resources/theme_manager.dart';
import 'package:weatherapp/providers/weather_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider<WeatherProvider>(
      create: (context) => WeatherProvider(),
      child: const WeatherApp(),
    ),
  );
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Provider.of<WeatherProvider>(context).weatherData == null
          ? ThemeData()
          : ThemeManager.getThemeData(context),
      home: HomePage(),
    );
  }
}
