import 'package:farceur/xd/VideoList.dart';
import 'package:farceur/xd/common_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'common_input_box.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final usernameController = TextEditingController();

  final passwordController = TextEditingController();

  final GlobalKey<FormState> _form = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF18171C),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            SvgPicture.asset(
              "assets/images/login.svg",
              width: 250,
              // width: 166.54,
              // height: 214.96,
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              alignment: Alignment(0.06, -0.36),
              width: 430.0,
              height: 653.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(100.0),
                ),
                color: const Color(0xFF242526),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Form(
                  key: _form,
                  child: Column(

                    children: <Widget>[
                      //Spacer(flex: 85),
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        'LOGIN',
                        style: TextStyle(
                          fontFamily: 'Helvetica Neue',
                          fontSize: 25.0,
                          color: Colors.white,
                          letterSpacing: 1.5,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      // Spacer(flex: 65),
// Group: Group 2
                      SizedBox(
                        height: 50,
                      ),

                      CommonInputBox(
                        maxLines: 1,
                        label: "Usename",
                        headerEnabled: true,
                        isBorderEnabled: true,
                        controller: usernameController,
                        //isPassword: loginController.passwordHidden.value,
                        boarderColor: Color(0xFF3A3B3C),
                        validator: (value) {
                          if (value.toString().isEmpty) {
                            return "Enter UserName";
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 20,
                      ),

                      CommonInputBox(
                        maxLines: 1,

                        label: "Password",
                        headerEnabled: true,
                        isBorderEnabled: true,
                        controller: passwordController,
                        //isPassword: loginController.passwordHidden.value,
                        boarderColor: Color(0xFF3A3B3C),
                        validator: (value) {
                          if (value.toString().isEmpty) {
                            return "Enter Password";
                          }
                          return null;
                        },
                      ),
                      // Spacer(flex: 23),
// Group: Group 4
                      SizedBox(
                        height: 20,
                      ),

                      CommonButton(
                        width: 300,
                          text: "LOGIN",
                          onPress: () {
                            if (_form.currentState?.validate() ?? false) {
                              if(usernameController.text=="test@gmail.com" && passwordController.text=="12345"){
                                Get.to(() => VideoList());
                              }else if(usernameController.text=="sanket1008@gmail.com" && passwordController.text=="1234"){
                                Get.to(() => VideoList());
                              }

                            }
                          })
                      //Spacer(flex: 181),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
