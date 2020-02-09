import 'package:flutter/material.dart';
import 'package:flutter_sample_app/clima/services/location.dart';
import 'package:flutter_sample_app/clima/services/weather.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    getLocation().then((location) {
      getWeather(location.latitude, location.longitude);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(),
    );
  }

  Future<Location> getLocation() async {
    Location location = Location();
    await location.geCurrentLocation();
    return location;
  }

  void getWeather(double latitude, double longitude) async {
    Weather weather = Weather();
    weather.fetchWeather(latitude, longitude).then((response) {
      print(response);
    });
  }
}
