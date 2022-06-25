// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import './home_screen.dart';
import './mock_data.dart';

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
          itemBuilder: (context, index) => HomeScreen(
            name: mockData[index]['name'],
            imgURL: mockData[index]['imageURL'],
            description: mockData[index]['description'],
          ),
        ),
      ),
    );
  }
}
