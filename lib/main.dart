import 'package:emarket/core/localization/%20translation.dart';
import 'package:emarket/core/localization/changelocal.dart';
import 'package:emarket/core/services/services.dart';
import 'package:emarket/routes.dart';
import 'package:emarket/view/screen/onboarding.dart';
import 'package:emarket/view/screen/language.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initatialServices();
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    LocaleController controller =Get.put(LocaleController());
    return GetMaterialApp(
    translations:MyTranslation() ,
    debugShowCheckedModeBanner: false ,
    title: 'Flutter Demo',
    locale: controller.language ,
    theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
    useMaterial3: true,
    ),
    home: language()
    ,

    );
  }
}

