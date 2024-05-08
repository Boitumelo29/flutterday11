import 'package:http/http.dart' as http;

class DataService {
  void getWeather() {
    //https://api.openweathermap.org/data/2.5/weather?q={city name}&appid={API key}

    final queryParameter = {};

    final uri = Uri.https('api.openweathermap.org', 'data/2.5/weather');
  }
}
