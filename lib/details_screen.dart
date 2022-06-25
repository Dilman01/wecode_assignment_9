// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  String? name;
  String? imgURL;
  String? description;

  Details(
      {required this.name, required this.imgURL, required this.description});

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
              imgURL!,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            name!,
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            description!,
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
