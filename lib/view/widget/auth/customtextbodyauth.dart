import 'package:flutter/cupertino.dart';

class CustomTextBodyAuth extends StatelessWidget {
  final String text;

  const CustomTextBodyAuth({super.key, required this.text});
  @override
  Widget build(BuildContext context) {
    return Text(
        textAlign: TextAlign.center,
        text
    );
  }
}
