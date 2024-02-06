import 'package:flutter/material.dart';
import 'package:untitled/HourellyForecaset.dart';
import 'package:untitled/Widgets/CustomContainer.dart';
import 'package:geolocator/geolocator.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<Position> requestPermission() async {
    LocationPermission ispersmission = await Geolocator.checkPermission();
    await Geolocator.requestPermission();
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.medium);
    return position;
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 80),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Bengaluru',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '19 | Mostly Clear',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              TabBar(
                tabs: [
                  Text(
                    'Hourely Forecast',
                  ),
                  Text(
                    'Hourely Forecast',
                  ),
                ],
              ),
              Expanded(
                child: TabBarView(
                  children: [
                    InkWell(
                      onTap: () async {
                        Position postion = await requestPermission();
                      },
                      child: HourelyForecast(),
                    ),
                    CustomContainer(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
