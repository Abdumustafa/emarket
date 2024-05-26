import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Custombuttonlang extends StatelessWidget {
  final String textbutton;
  final void Function()? onPressed;

  const Custombuttonlang({super.key, required this.textbutton, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(onPressed: onPressed, child: Text(textbutton)),
    );
  }
}
