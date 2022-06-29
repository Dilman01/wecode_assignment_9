// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:wecode_assignment_9/src/models/cities_model.dart';

import 'src/screens/home_screen.dart';
import 'src/mock/mock_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text('Cities of Kurdistan'),
          ),
        ),
        body: ListView.builder(
          itemCount: mockData.length,
          itemBuilder: (context, index) {
            List<Cities> city = mockData.map((e) {
              return Cities.fromMap(e);
            }).toList();
            return HomeScreen(
              city: city[index],
            );
          },
        ),
      ),
    );
  }
}
