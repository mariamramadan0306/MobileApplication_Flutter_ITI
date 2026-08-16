import 'package:demo/AboutMe.dart';
import 'package:demo/ExtraData.dart';
import 'package:demo/Info.dart';
import 'package:demo/Skills.dart';
import 'package:demo/TechStack.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: DemoScreen());
  }
}

class DemoScreen extends StatelessWidget {
  const DemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Developer ID Card",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        backgroundColor: const Color.fromARGB(255, 12, 118, 204),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(22),
          child: Column(
            children: [
              Info(),
              ExtraData(),
              SizedBox(height: 20),
              Skills(),
              SizedBox(height: 20),
              AboutME(),
              SizedBox(height: 20),
              TechStack(),
            ],
          ),
        ),
      ),
    );
  }
}
