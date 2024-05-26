import 'package:emarket/controller/onbording.dart';
import 'package:emarket/view/widget/onbording/dot.dart';
import 'package:emarket/view/widget/onbording/model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widget/onbording/buttom.dart';

class OnBording extends StatelessWidget {
  const OnBording({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnBordingControlImp());
    return const Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            flex: 4,
            child: model(),
          ),
          Expanded(
              flex: 1,
              child: Column(
                children: [
                  dot(),
                  SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        buttom(),
                      ],
                    ),
                  )
                ],
              ))
        ],
      )),
    );
  }
}
