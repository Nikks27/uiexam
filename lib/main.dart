
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uiexam/utils/Deatailspage.dart';
import 'package:uiexam/utils/cartlist.dart';
import 'package:uiexam/utils/homepage.dart';

void main(){
  runApp(Exam());
}
class Exam extends StatelessWidget {
  const Exam({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes:{
        '/home' : (context) => homepage(),
        '/Deatail' : (context) => Deatailspage(),
        'cart' : (context) =>  cartlist(),
      },
    );
  }
}
