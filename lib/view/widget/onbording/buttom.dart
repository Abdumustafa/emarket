import 'package:emarket/controller/onbording.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class buttom extends GetView<OnBordingControlImp> {
  const buttom({super.key});

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(onPressed: () {
      controller.next();
    }, child: Text("Next",style: TextStyle(color: Colors.grey[700],fontSize: 18),),
      style: ElevatedButton.styleFrom(padding: EdgeInsets.symmetric(horizontal: 100,vertical: 2)),
    );
  }
}
