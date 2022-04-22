class WeatherModel {
  String weatherStateName;
  DateTime date;
  double minTemp;
  double maxTemp;
  double theTemp;
  String cityName;
  WeatherModel({
    required this.weatherStateName,
    required this.date,
    required this.minTemp,
    required this.maxTemp,
    required this.theTemp,
    required this.cityName,
  });
  factory WeatherModel.fromJson(Map<String, dynamic> data) {
    return WeatherModel(
      weatherStateName: data['weather_state_name'],
      date: DateTime.parse(data['created']),
      minTemp: data['min_temp'],
      maxTemp: data['max_temp'],
      theTemp: data['the_temp'],
      cityName: '',
    );
  }
}
