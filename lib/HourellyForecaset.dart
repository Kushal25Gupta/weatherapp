import 'package:flutter/material.dart';
import 'package:untitled/Widgets/CustomContainer.dart';

class HourelyForecast extends StatefulWidget {
  const HourelyForecast({super.key});

  @override
  State<HourelyForecast> createState() => _HourelyForecastState();
}

class _HourelyForecastState extends State<HourelyForecast> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CustomContainer(),
                CustomContainer(),
                CustomContainer(),
                CustomContainer(),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(),
          ),
        ],
      ),
    );
  }
}
