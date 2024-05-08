// 3 objects to represent the json

// our class is our object and each object needs a contructor eg WeatherResponse({this.cityName});
class WeatherResponse {
  final String cityName;
  final TemperatureInfo tempInfo;
  final WeatherInfo weatherInfo;
//the construtor
  WeatherResponse(
      {required this.cityName,
      required this.tempInfo,
      required this.weatherInfo});

  // we are building a custome contructor to something in
  factory WeatherResponse.fromJson(Map<String, dynamic> json) {
    final cityName = json['name'];
    final tempInfoJson = json['main'];
    final tempInfo = TemperatureInfo.fromJson(tempInfoJson);
    final weatherInfoJson = json['weather'];
    final weatherInfo = WeatherInfo.fromJson(weatherInfoJson);

    return WeatherResponse(
        cityName: cityName, tempInfo: tempInfo, weatherInfo: weatherInfo);
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

class WeatherInfo {
  final String description;
  final String icon;

  WeatherInfo({required this.description, required this.icon});

  factory WeatherInfo.fromJson(Map<String, dynamic> json) {
    final description = json['description'];
    final icon = json['icon'];
    return WeatherInfo(description: description, icon: icon);
  }
}
