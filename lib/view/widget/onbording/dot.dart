import 'package:emarket/controller/onbording.dart';
import 'package:emarket/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class dot extends StatelessWidget {
  const dot({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBordingControlImp>(builder: (controller) =>
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
              onBordingModelList.length,
                  (index) =>
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    margin: const EdgeInsets.only(right: 6),
                    height: 6,
                    width: controller.currntPage == index? 20 : 5,
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(2)),
                  ),
            ),
          ],
        ),
        );
  }
}
