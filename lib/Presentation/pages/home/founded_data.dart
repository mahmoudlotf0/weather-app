import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weatherapp/providers/weather_provider.dart';

class FoundedData extends StatelessWidget {
  const FoundedData({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String dateFormate =
        'update at: ${Provider.of<WeatherProvider>(context).weatherData?.date.hour.toString()}:${Provider.of<WeatherProvider>(context).weatherData?.date.minute.toString()}';
    return Container(
      decoration: BoxDecoration(
        color: Provider.of<WeatherProvider>(context).getColorTheme(),
        gradient: LinearGradient(
          colors: [
            Provider.of<WeatherProvider>(context).getColorTheme(),
            Provider.of<WeatherProvider>(context)
                .getColorTheme()
                .withOpacity(0.4),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(flex: 3),
          _buildCityName(dateFormate, context),
          _buildDate(dateFormate),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _buildImage(context),
              _buildTheTemp(context),
              Column(
                children: [
                  _buildMaxTemp(context),
                  _buildMinTemp(context),
                ],
              ),
            ],
          ),
          const Spacer(),
          _buildWeatherStateName(context),
          const Spacer(flex: 5),
        ],
      ),
    );
  }

  Widget _buildWeatherStateName(BuildContext context) {
    return Text(
      Provider.of<WeatherProvider>(context).weatherData!.weatherStateName,
      style: const TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildMaxTemp(BuildContext context) {
    return Text(
      'maxTemp: ${Provider.of<WeatherProvider>(context).weatherData!.maxTemp.round().toString()}',
      style: const TextStyle(
        fontSize: 22,
      ),
    );
  }

  Widget _buildTheTemp(BuildContext context) {
    return Text(
      Provider.of<WeatherProvider>(context)
          .weatherData!
          .theTemp
          .round()
          .toString(),
      style: const TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildMinTemp(BuildContext context) {
    return Text(
      'maxTemp: ${Provider.of<WeatherProvider>(context).weatherData!.minTemp.round().toString()}',
      style: const TextStyle(
        fontSize: 22,
      ),
    );
  }

  Widget _buildDate(String dateFormate) {
    return Text(
      dateFormate,
      style: const TextStyle(
        fontSize: 22,
      ),
    );
  }

  Widget _buildImage(BuildContext context) {
    return Image.asset(Provider.of<WeatherProvider>(context).getImage());
  }

  Widget _buildCityName(String dateFormate, BuildContext context) {
    return Text(
      Provider.of<WeatherProvider>(context).weatherData!.cityName.toUpperCase(),
      style: const TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
