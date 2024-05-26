import 'package:emarket/controller/onbording.dart';
import 'package:emarket/core/constant/colors.dart';
import 'package:emarket/data/datasource/static/static.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class model extends GetView<OnBordingControlImp> {
  const model({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller:  controller.pageController,
      onPageChanged: (val) {
        controller.onPageChange(val);

      },
      itemCount: onBordingModelList.length,
      itemBuilder: (context, i) => Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Image.asset(
            onBordingModelList[i].image!,
            height: 250,
            width: 250,
            fit: BoxFit.fill,
          ),
          const SizedBox(
            height: 50,
          ),
          Text(
              textAlign: TextAlign.center,
              onBordingModelList[i].title!,
              style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.green)),
          const SizedBox(
            height: 40,
          ),
          Text(
            textAlign: TextAlign.center,
            onBordingModelList[i].body!,
            style: const TextStyle(
                color: AppColor.grey,
                fontWeight: FontWeight.w500,
                fontSize: 20),
          ),
        ],
      ),
    );
  }
}
