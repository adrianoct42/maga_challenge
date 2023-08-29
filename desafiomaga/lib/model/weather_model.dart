import 'package:desafiomaga/model/location.dart';
import 'package:desafiomaga/model/network_data.dart';

const weatherApiUrl = 'https://api.openweathermap.org/data/2.5/weather';
String apiKey = "89c896068a33521a38c28eb712fc474c";

class WeatherModel {
  Future<dynamic> getLocationWeather() async {
    // Await dos dados de location.dart
    Location location = Location();
    await location.getCurrentLocation();

    // Get Location Data:
    NetworkData networkHelper = NetworkData(
        '$weatherApiUrl?lat=${location.latitude}&lon=${location.longitide}&appid=$apiKey&units=metric');
    var weatherData = await networkHelper.getData();
    return weatherData;
  }
}
