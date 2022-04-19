import 'package:flutter/material.dart';
import 'package:weatherapp/models/weather_model.dart';
import 'package:weatherapp/resources/strings.dart';
import 'package:weatherapp/ui/common_widgets/search_button.dart';
import 'package:weatherapp/ui/pages/home/founded_data.dart';
import 'package:weatherapp/ui/pages/home/no_founded_data.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  WeatherModel? weatherData;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          SearchButton(),
        ],
        title: const Text(AppString.titleHomePageAppBar),
      ),
      body: weatherData == null ? const NoFoundedData() : const FoundedData(),
    );
  }
}
