import 'package:emarket/core/constant/routesname.dart';
import 'package:emarket/core/localization/changelocal.dart';
import 'package:emarket/view/widget/language/custombuttomlang.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'onboarding.dart';

class language extends GetView<LocaleController> {
  const language({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "1".tr,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Custombuttonlang(
                textbutton: "Ar",
                onPressed: () {
                  controller.changeLang("ar");
                  Get.to(OnBording());
                }),
            Custombuttonlang(
                textbutton: "En",
                onPressed: () {
                  controller.changeLang("en");
                  Get.to(OnBording());

                }),
          ],
        ),
      ),
    );
  }
}
