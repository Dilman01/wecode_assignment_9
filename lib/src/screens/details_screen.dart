// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:wecode_assignment_9/src/models/cities_model.dart';

class Details extends StatelessWidget {
  Details({required this.city});

  Cities city;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details'),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 250,
            child: Image.network(
              city.imgURL,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            city.name,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            city.description,
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
