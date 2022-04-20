import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weatherapp/Presentation/pages/home/founded_data.dart';
import 'package:weatherapp/Presentation/pages/home/no_founded_data.dart';
import 'package:weatherapp/Presentation/pages/home/search_button.dart';
import 'package:weatherapp/Presentation/resources/strings.dart';

import 'package:weatherapp/models/weather_model.dart';
import 'package:weatherapp/providers/weather_provider.dart';

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
      body: Provider.of<WeatherProvider>(context).weatherData == null
          ? const NoFoundedData()
          : const FoundedData(),
    );
  }
}
