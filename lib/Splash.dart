import 'package:farceur/module/home/view/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'core/utils/shared_keys.dart';
import 'core/utils/storage_utils.dart';
import 'module/login/view/LoginPage.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
Future.delayed(Duration(seconds: 3),(){
  _initiateStorageUtils();
  var login=StorageUtil.getBool(SharedKeys.LOGIN);
  if(login==true){
    Get.to(() => HomeScreen());
  }else{
    Get.to(() => LoginPage());
  }

});

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF18171C),
      body: Align(
        alignment: Alignment(0.0, 0.82),
        child: Column(
          children: [
            Spacer(),
            Spacer(),
            SvgPicture.asset(
              // Path 153546
              "assets/images/logo.svg",
              width: 296.54,
              height: 214.96,
            ),

            Spacer(),
            Spacer(),
            SvgPicture.asset(
              "assets/images/icon.svg",
              width: 88.28,
              height: 44.45,
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
  Future<void> _initiateStorageUtils() async {
    await StorageUtil.getInstance();
  }

}
