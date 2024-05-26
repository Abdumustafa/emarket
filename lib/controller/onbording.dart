import 'package:emarket/core/constant/routesname.dart';
import 'package:emarket/data/datasource/static/static.dart';
import 'package:emarket/view/screen/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

abstract class OnBordingControl extends GetxController {
  next();

  onPageChange(int index);
}

class OnBordingControlImp extends OnBordingControl {
  late PageController pageController;
  int currntPage = 0;

  @override
  next() {
    currntPage++;
    if (currntPage > onBordingModelList.length - 1) {
      Get.offAll(Login());
    } else {
      pageController.animateToPage(currntPage,
          duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
    }
  }

  @override
  onPageChange(int index) {
    currntPage = index;
    update();
  }

  @override
  void onInit() {
    pageController = PageController();
    super.onInit();
  }
}
