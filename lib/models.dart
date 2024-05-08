// 3 objects to represent the json

// our class is our object and each object needs a contructor eg WeatherResponse({this.cityName});
class WeatherResponse {
  final String cityName;

//the construtor
  WeatherResponse({required this.cityName});

  // we are building a custome contructor to something in
  factory WeatherResponse.fromJson(Map<String, dynamic> json) {
    final cityName = json['name'];
    return WeatherResponse(cityName: cityName);
  }
}
// this model is to collect a specific object using the constuctor

class TemperatureInfo {
  final double temperature;

  TemperatureInfo({required this.temperature});

  factory TemperatureInfo.fromJson(Map<String, dynamic> json) {
    final temperature = json['temp'];

    return TemperatureInfo(temperature: temperature);
  }
}
