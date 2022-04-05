class WeatherModel {
  String weatherStateName;
  String applicableDate;
  double minTemp;
  double maxTemp;
  double theTemp;
  WeatherModel({
    required this.weatherStateName,
    required this.applicableDate,
    required this.minTemp,
    required this.maxTemp,
    required this.theTemp,
  });
  factory WeatherModel.fromJson(Map<String, dynamic> data) {
    return WeatherModel(
      weatherStateName: data['weather_state_name'],
      applicableDate: data['applicable_date'],
      minTemp: data['min_temp'],
      maxTemp: data['max_temp'],
      theTemp: data['the_temp'],
    );
  }
}
