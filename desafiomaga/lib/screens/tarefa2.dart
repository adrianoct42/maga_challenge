import "package:desafiomaga/model/weather_model.dart";
import "package:desafiomaga/screens/main_drawer.dart";
import "package:flutter/material.dart";

class Tarefa2 extends StatefulWidget {
  const Tarefa2({super.key});

  @override
  State<Tarefa2> createState() => _Tarefa2State();
}

class _Tarefa2State extends State<Tarefa2> {
  int? temperature;
  String? condition;
  int? humidity;
  String? country;
  String? city;
  WeatherModel weatherModel = WeatherModel();

  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  /// variable weatherData contain response from the API
  /// to fetch data check the response to get the way the data structured
  getLocationData() async {
    var weatherData = await weatherModel.getLocationWeather();
    setState(() {
      condition = weatherData["weather"][0]["main"];
      humidity = weatherData["main"]["humidity"];
      // country = weatherData["sys"]["country"];
      city = weatherData["name"];
      double temp = weatherData["main"]["temp"];
      temperature = temp.toInt();
    });
    print(weatherData);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Tarefa 2",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      drawer: MainDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Aguarde alguns segundos enquanto a API busca os dados, caso inicialmente apareça null!",
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            Text(
              "Temperature: $temperature°C",
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            Text(
              "Condition: $condition",
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            Text(
              "Humidity: $humidity",
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
/*             Text(
              "Country: $country",
              style: TextStyle(
                fontSize: 20.0,
              ),
            ), */
            Text(
              "City: $city",
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
