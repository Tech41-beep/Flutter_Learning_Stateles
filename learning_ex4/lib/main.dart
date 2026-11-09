import 'package:flutter/material.dart';

import './data/weather_data.dart';
import './models/weather_type.dart';
import 'widgets/weather_card.dart';

final List<WeatherData> WeatherList = [
  const WeatherData(
    city: 'Phnom Penh',
    condition: WeatherType.cloudy,
    temperature: 32,
    minTemparature: 10,
    maxTemparature: 30,
    image: 'asset/ex4/cloudy.png',
  ),
  const WeatherData(
    city: 'Paris',
    condition: WeatherType.sunnyCloudy,
    temperature: 40,
    minTemparature: 10,
    maxTemparature: 30,
    image: 'asset/ex4/sunnyCloudy.png',
  ),
  const WeatherData(
    city: 'Rome',
    condition: WeatherType.sunny,
    temperature: 32,
    minTemparature: 10,
    maxTemparature: 30,
    image: 'asset/ex4/sunny.png',
  ),

  const WeatherData(
    city: 'Toulose',
    condition: WeatherType.veryCloudy,
    temperature: 32,
    minTemparature: 10,
    maxTemparature: 30,
    image: 'asset/ex4/veryCloudy.png',
  ),
];
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('City temparature'),
          backgroundColor: Colors.lightBlue,
          elevation: 0,
          actions: [
            IconButton(
              onPressed: () {
                print('Menu clicked');
              },
              icon: const Icon(Icons.menu),
              color: Colors.white,
            ),
          ],
        ),
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            WeatherCard(
              backgroundcolor: Colors.deepPurpleAccent,
              weather: WeatherList[0],
            ),
            const SizedBox(height: 12),

            WeatherCard(
              backgroundcolor: Colors.lightGreen,
              weather: WeatherList[1],
            ),
            const SizedBox(height: 12),

            WeatherCard(backgroundcolor: Colors.pink, weather: WeatherList[2]),
            const SizedBox(height: 12),

            WeatherCard(
              backgroundcolor: Colors.orange,
              weather: WeatherList[3],
            ),
            const SizedBox(height: 12),

            WeatherCard(
              backgroundcolor: Colors.deepOrange,
              weather: WeatherList[3],
            ),
          ],
        ),

        // bottom navigation
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,

          onTap: (index) {
            print('select tab: $index');
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.cloud), label: 'Weather'),
            BottomNavigationBarItem(
              icon: Icon(Icons.location_city),
              label: 'Cities',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.cloud), label: 'Weather'),
          ],
        ),
      ),
    );
  }
}
