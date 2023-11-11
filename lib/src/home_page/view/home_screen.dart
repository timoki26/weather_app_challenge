import 'package:weather_app_challenge/app.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:weather_app_challenge/universal/weather_model.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Weather weatherModel;

  Future<Weather> doSomeAsyncStuff() async {
    try {
      final weather = await dio.get("https://weather.visualcrossing.com/VisualCrossingWebServices/rest/services/timeline/London,UK?key=AAU43JYDVUR29UVPP7G3RNE8E");
      print(weather);
      weatherModel = Weather.fromJson(weather.data);
      print(weatherModel);
      return weatherModel;
    } catch (e, stacktrace) {
      throw Exception("Exception occured: $e stackTrace: $stacktrace");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: doSomeAsyncStuff(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(snapshot.data!.currentConditions.temp.toString()),
                ]
              ),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text(snapshot.error.toString()),
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}