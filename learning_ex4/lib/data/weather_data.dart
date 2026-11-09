import '../models/weather_type.dart';
class WeatherData{
  final String city;
  final int temperature;
  final WeatherType condition;
  final String image;
  final double minTemparature;
  final double maxTemparature;

  const WeatherData({
    required this.city,
    required this.temperature,
    required this.condition,
    required this.image,
    required this.minTemparature,
    required this.maxTemparature,
  }
  );
}