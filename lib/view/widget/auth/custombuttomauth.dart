import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButtomAuth extends StatelessWidget {
  final String text;
  final void Function()?onPressed;
  const CustomButtomAuth({super.key, required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 100,),
        ),
        onPressed:onPressed, child:  Text(text,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black)),);

  }
}
