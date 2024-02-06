import 'package:flutter/material.dart';

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({super.key});

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text('Weather'),
      ),
      body: Column(
        children: [
          Container(
            child: ListTile(
              leading: Icon(Icons.search),
              title: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Seach for weahter screen',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
