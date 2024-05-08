import 'package:http/http.dart' as http;

class DataService {
  void getWeather(String city) async {
    //https://api.openweathermap.org/data/2.5/weather?q={city name}&appid={API key}

    final queryParameter = {
      'q': city,
      'appid': '37011c80f32b7f4de55543ace3ff9caa'
    };

    final uri =
        Uri.https('api.openweathermap.org', 'data/2.5/weather', queryParameter);

    final response = await http.get(uri);

    print(response.body);
  }
}


//what did we do?
// we created a final variable that holds the queryParameters
//we then created a final uri that creates the uri 
// we then created a final response that awaits and gets the uri
