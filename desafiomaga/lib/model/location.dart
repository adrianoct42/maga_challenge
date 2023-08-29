import 'package:geolocator/geolocator.dart';

class Location {
  double latitude = 0;
  double longitide = 0;
  String apiKey = "89c896068a33521a38c28eb712fc474c"; // OpenWeather API
  int status = 0;

  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);

      latitude = position.latitude;
      longitide = position.longitude;
    } catch (e) {
      print(e);
    }
  }
}
