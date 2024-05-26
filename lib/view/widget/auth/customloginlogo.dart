import 'package:flutter/cupertino.dart';

import '../../../core/constant/imageassets.dart';

class LoginLogo extends StatelessWidget {
  const LoginLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return    Container(height: 150,
        width: 150,
        child: Image.asset(ImageAssets.loginlogo));

  }
}
