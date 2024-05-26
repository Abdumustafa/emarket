import 'package:emarket/core/constant/routesname.dart';
import 'package:emarket/view/screen/login.dart';
import 'package:emarket/view/screen/onboarding.dart';
import 'package:emarket/view/widget/auth/signup.dart';
import 'package:flutter/cupertino.dart';

Map <String,Widget Function(BuildContext)> routes = {
  AppRoutes.Login : (Context) => const Login(),
  AppRoutes.signUp : (Context) => const SignUp(),
  AppRoutes.onbording : (Context) => const OnBording() ,
};