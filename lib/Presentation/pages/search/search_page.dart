import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weatherapp/Presentation/resources/strings.dart';
import 'package:weatherapp/models/weather_model.dart';
import 'package:weatherapp/providers/weather_provider.dart';
import 'package:weatherapp/services/weather_services.dart';

// ignore: must_be_immutable
class SearchPage extends StatelessWidget {
  SearchPage({Key? key}) : super(key: key);
  String? cityName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppString.titleSearchPageAppBar),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: TextField(
            onSubmitted: (String data) async {
              cityName = data;
              WeatherServices services = WeatherServices();
              WeatherModel weather =
                  await services.getWeather(cityName: cityName!);
              Provider.of<WeatherProvider>(context, listen: false).weatherData =
                  weather;
              Navigator.of(context).pop();
            },
            decoration: const InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              suffixIcon: Icon(Icons.search),
              hintText: 'Enter a City',
              border: OutlineInputBorder(),
              label: Text('Search'),
            ),
          ),
        ),
      ),
    );
  }
}
