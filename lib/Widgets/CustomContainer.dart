import 'package:flutter/material.dart';
import 'package:untitled/Weather%20Screen.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => WeatherScreen(),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        padding: EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
          color: Colors.teal,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              blurRadius: 1,
              spreadRadius: 1,
              blurStyle: BlurStyle.normal,
              color: Colors.black,
              offset: Offset(1, 1),
            )
          ],
        ),
        width: 52,
        height: 150,
        child: Column(
          children: [
            Text('12 PM'),
            SizedBox(height: 10),
            Icon(Icons.cloud),
            SizedBox(height: 10),
            Text('20'),
          ],
        ),
      ),
    );
  }
}
