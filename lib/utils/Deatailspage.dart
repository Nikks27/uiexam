import 'package:flutter/material.dart';

class Deatailspage extends StatefulWidget {
  const Deatailspage({super.key});

  @override
  State<Deatailspage> createState() => _DeatailspageState();
}

class _DeatailspageState extends State<Deatailspage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.white,
      body: Container(
        height: 100,
        width: 100,
        color: Colors.brown,
      ),
    );
  }
}
