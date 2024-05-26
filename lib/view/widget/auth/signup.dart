import "dart:ui";

import "package:emarket/core/constant/colors.dart";
import "package:emarket/core/constant/imageassets.dart";
import "package:emarket/view/widget/auth/custombuttomauth.dart";
import "package:emarket/view/widget/auth/customloginlogo.dart";
import "package:emarket/view/widget/auth/customtextfield.dart";
import "package:emarket/view/widget/auth/customtexttitleauth.dart";
import "package:flutter/material.dart";

import "customtextbodyauth.dart";


class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Sign In",
            style: TextStyle(color: AppColor.grey, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          elevation: 0.0,
        ),
        body: Center(
          child: Column(
            children: [
              LoginLogo(),
              const SizedBox(
                height: 20,
              ),
              const CustomTextTitleAuth(text: "Welcome Back"),

              CustomTextBodyAuth(
                  text:
                  "Sign in with your email and password\n or Continue with social media"),
              const SizedBox(
                height: 20,
              ),
              TextField("type your email...", "Email", const Icon(Icons.mail)),

              TextField(
                  "type your password...", "password", const Icon(Icons.lock)),
              Padding(
                padding: const EdgeInsets.only(right: 20,top: 10,bottom: 20),
                child: Container(
                  alignment: Alignment.bottomRight,
                  child: Text(
                    "Forget password",
                    style: TextStyle(color:AppColor.grey),
                    textAlign: TextAlign.end,
                  ),
                ),
              ),

              CustomButtomAuth(
                text: "Continue",
                onPressed: () {},
              ),

              Container(
                padding: EdgeInsets.only(left: 10,top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [ Text("Dont have an account ? "),
                    InkWell(child: Text(" Sign Up",style: TextStyle(color:AppColor.primarycolorgreen),),),


                  ],
                ),
              ),
            ],

          ),

        ));
  }

  Widget TextField(hintText, labelText, prefixIcon) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: TextStyle(
            color: Colors.grey[600],
          ),
          hintText: hintText,
          hintStyle: TextStyle(
            color: Colors.grey[400],
          ),
          prefixIcon: prefixIcon,
          filled: true,
          fillColor: Colors.grey[200],
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12.0)),
            borderSide: BorderSide.none,
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12.0)),
            borderSide: BorderSide(color: Colors.green),
          ),
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(12.0)),
            borderSide: BorderSide.none,
          ),
          contentPadding:
          const EdgeInsets.symmetric(vertical: 16.0, horizontal: 20.0),
        ),
      ),
    );
  }
}
