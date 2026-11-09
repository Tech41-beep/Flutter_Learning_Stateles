enum WeatherType {
  sunny, cloudy, rainy, sunnyCloudy, veryCloudy }

String getWeatherName(WeatherType type) {
  switch (type) {
    case WeatherType.sunny:
      return 'asset/ex4/sunny.png';
    case WeatherType.cloudy:
      return 'asset/ex4/cloudy.png';
    case WeatherType.rainy:
      return 'asset/ex4/rainy.png';
    case WeatherType.veryCloudy:
      return 'asset/ex4/verycloud.png';
    case WeatherType.sunnyCloudy:
      return 'asset/ex4/sunnyCloudy.png';
  }
}
