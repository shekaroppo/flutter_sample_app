import 'package:http/http.dart' as http;

class Weather {
  Future<http.Response> fetchWeather(double latitude, double longitude) async {
    try {
      return http.get(
          'api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude');
    } catch (e) {
      return null;
    }
  }
}
