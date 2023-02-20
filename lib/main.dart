import 'package:bclabs_convinience/ui/input/input_launch.dart';
import 'package:bclabs_convinience/ui/recommend/recommend_restaurant.dart';
import 'package:bclabs_convinience/ui/vacation/input_vacation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: const TabContainer(length: 3, title: 'BCLabs Convenience App'),
    );
  }
}

class TabContainer extends StatelessWidget {
  const TabContainer({super.key, required this.length, required this.title});

  final int length;
  final String title;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: length,
      child: Scaffold(
        appBar: AppBar(
          title: Text(title),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.edit_note)),
              Tab(icon: Icon(Icons.restaurant)),
              Tab(icon: Icon(Icons.forest)),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            InputLaunch(),
            RecommendRestaurant(),
            InputVacation(),
          ],
        ),
      ),
    );
  }
}