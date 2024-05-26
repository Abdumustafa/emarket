import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/constant/colors.dart';

class textsignup extends StatelessWidget {
  final String textOne;
  final String texttwo;
  final void Function() onTap;
  const textsignup({super.key, required this.textOne, required this.texttwo,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [ Text(textOne),
        InkWell(
          onTap: onTap,
          child: Text(texttwo,style: TextStyle(color:AppColor.primarycolorgreen),),),


      ],
    );
  }
}
