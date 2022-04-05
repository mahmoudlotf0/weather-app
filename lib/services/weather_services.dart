import 'dart:convert';

import 'package:http/http.dart' as http;

class WeatherServices {
  String baseUrl = 'https://www.metaweather.com';
  Future<int> getCityId({required String cityName}) async {
    Uri url = Uri.parse('$baseUrl/api/location/search/?query=$cityName');
    http.Response response = await http.get(url);
    List<dynamic> weatherData = jsonDecode(response.body);
    int cityId = weatherData[0]['woeid'];
    return cityId;
  }

  void getWeather({required String cityName}) async {
    int cityId = await getCityId(cityName: cityName);
  }
}
