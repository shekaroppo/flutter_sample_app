import 'package:flutter/material.dart';
import 'package:flutter_sample_app/clima/services/location.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    getLocation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(),
    );
  }

  void getLocation() async {
    Location location = Location();
    await location.geCurrentLocation();
    print(location.latitude);
    print(location.longitude);
  }
}
