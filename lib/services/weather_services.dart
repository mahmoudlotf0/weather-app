import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weatherapp/Presentation/resources/constants.dart';
import 'package:weatherapp/models/weather_model.dart';

class WeatherServices {
  Future<int> getCityId({required String cityName}) async {
    Uri url = Uri.parse('$baseUrl/api/location/search/?query=$cityName');
    http.Response response = await http.get(url);
    List<dynamic> weatherData = jsonDecode(response.body);
    int cityId = weatherData[0]['woeid'];
    return cityId;
  }

  Future<WeatherModel?> getWeather({required String cityName}) async {
    WeatherModel? weatherData;
    try {
      int cityId = await getCityId(cityName: cityName);
      Uri url = Uri.parse('$baseUrl/api/location/$cityId/');
      http.Response response = await http.get(url);
      Map<String, dynamic> jsonData = jsonDecode(response.body);
      Map<String, dynamic> data = jsonData['consolidated_weather'][0];
      weatherData = WeatherModel.fromJson(data);
    } catch (e) {
      print(e);
    }
    return weatherData;
  }
}
