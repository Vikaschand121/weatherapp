class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final weatherProvider = Provider.of<WeatherProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather App'),
      ),
      body: Column(
        children: [
          Text(weatherProvider.currentLocation.name),
          Text('${weatherProvider.currentWeather.temperature}°F'),
          Text(weatherProvider.currentWeather.condition),
          Expanded(
            child:
