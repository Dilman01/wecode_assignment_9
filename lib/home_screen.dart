// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import './details_screen.dart';

class HomeScreen extends StatelessWidget {
  String? name;
  String? imgURL;
  String? description;

  HomeScreen({required this.name, required this.imgURL, this.description});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => Details(
              name: name,
              imgURL: imgURL,
              description: description,
            ),
          ),
        );
      },
      child: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(
                top: 30,
              ),
              width: 300,
              height: 220,
              child: Image.network(
                imgURL!,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              width: 150,
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color.fromARGB(255, 198, 198, 198),
              ),
              child: Text(
                name!,
                style: TextStyle(
                  color: Color.fromARGB(255, 117, 117, 117),
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
