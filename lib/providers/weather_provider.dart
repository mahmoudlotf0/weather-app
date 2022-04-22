import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weatherapp/Presentation/resources/assets_manager.dart';
import 'package:weatherapp/Presentation/resources/color_manager.dart';
import 'package:weatherapp/models/weather_model.dart';

class WeatherProvider extends ChangeNotifier {
  WeatherModel? _weatherData;
  set weatherData(WeatherModel? weather) {
    _weatherData = weather;
    notifyListeners();
  }

  WeatherModel? get weatherData => _weatherData;
  static WeatherProvider getObject(BuildContext context) {
    return Provider.of<WeatherProvider>(context);
  }

  String getImage() {
    if (_weatherData!.weatherStateName == 'Clear' ||
        _weatherData!.weatherStateName == 'Light Cloud') {
      return ImageAssets.clearImage;
    } else if (_weatherData!.weatherStateName == 'Sleet' ||
        _weatherData!.weatherStateName == 'Snow' ||
        _weatherData!.weatherStateName == 'Hail') {
      return ImageAssets.snowImage;
    } else if (_weatherData!.weatherStateName == 'Heavy Cloud	') {
      return ImageAssets.cloudyImage;
    } else if (_weatherData!.weatherStateName == 'Light Rain' ||
        _weatherData!.weatherStateName == 'Heavy Rain' ||
        _weatherData!.weatherStateName == 'Showers') {
      return ImageAssets.rainyImage;
    } else if (_weatherData!.weatherStateName == 'Thunderstorm' ||
        _weatherData!.weatherStateName == 'Thunder') {
      return ImageAssets.thunderstormImage;
    } else {
      return ImageAssets.clearImage;
    }
  }

  MaterialColor getColorTheme() {
    if (_weatherData!.weatherStateName == 'Clear' ||
        _weatherData!.weatherStateName == 'Light Cloud') {
      return ColorManager.orange;
    } else if (_weatherData!.weatherStateName == 'Sleet' ||
        _weatherData!.weatherStateName == 'Snow' ||
        _weatherData!.weatherStateName == 'Hail') {
      return ColorManager.blue;
    } else if (_weatherData!.weatherStateName == 'Heavy Cloud	') {
      return ColorManager.blueGrey;
    } else if (_weatherData!.weatherStateName == 'Light Rain' ||
        _weatherData!.weatherStateName == 'Heavy Rain' ||
        _weatherData!.weatherStateName == 'Showers') {
      return ColorManager.blueGrey;
    } else if (_weatherData!.weatherStateName == 'Thunderstorm' ||
        _weatherData!.weatherStateName == 'Thunder') {
      return ColorManager.blue;
    } else {
      return ColorManager.orange;
    }
  }
}
