import 'package:flutter/material.dart';
import '../data/weather_data.dart';

class WeatherCard extends StatelessWidget {
  final WeatherData weather;
  final Color backgroundcolor;

  const WeatherCard({
    super.key,
    required this.backgroundcolor,
    required this.weather,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 115,
      decoration: BoxDecoration(
        color: backgroundcolor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),

        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Weather Icon
            CircleAvatar(
              radius: 45,
              backgroundColor: Colors.white,
              child: ClipOval(
                child: Image.asset(
                  weather.image,
                  width: 40,
                  height: 40,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(width: 12),
            // Section 2 : city and temperature
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    weather.city,
                    style: const TextStyle(color: Colors.white),
                  ),
                  Text(
                    'Min ${weather.minTemparature}°C',
                    style: const TextStyle(color: Colors.white),
                  ),
                  Text(
                    'Max ${weather.maxTemparature}°C',
                    style: const TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),

            Text(
              '${weather.temperature}°C',
              style: const TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
