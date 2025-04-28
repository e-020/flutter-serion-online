import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 5.0,
        title: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: GestureDetector(
            onTap: () {
              print("Study Group clicked!");
            },
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Home',
                style: TextStyle(fontSize: 17.0, color: Colors.cyanAccent),
              ),
            ),
          ),
        ),
      ),
    );
  }
}