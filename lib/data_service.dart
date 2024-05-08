import 'dart:convert';

import 'package:flutterday11/models.dart';
import 'package:http/http.dart' as http;

class DataService {
  Future<WeatherResponse> getWeather(String city) async {
    //https://api.openweathermap.org/data/2.5/weather?q={city name}&appid={API key}

    final queryParameter = {
      'q': city,
      'appid': '37011c80f32b7f4de55543ace3ff9caa'
    };

    //Creates a new https URI from authority, path and query.
    final uri =
        Uri.https('api.openweathermap.org', 'data/2.5/weather', queryParameter);

    final response = await http.get(uri);

    print(response.body);
    //jsonDecoder Provide the JSON String
    final json = jsonDecode(response.body);
    return WeatherResponse(cityName: json);
  }
}


//what did we do?
// we created a final variable that holds the queryParameters
//we then created a final uri that creates the uri 
// we then created a final response that awaits and gets the uri

/// so we created the model which has our object and the object has a construtor, we then called the constuctor in the data service class, the data se