import 'package:farceur/core/utils/custom_alert.dart';
import 'package:farceur/core/utils/shared_keys.dart';
import 'package:farceur/core/utils/storage_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../core/utils/assets.dart';
import '../../../core/widget/common_button.dart';
import '../../../core/widget/common_input_box.dart';
import '../../home/view/home_screen.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final usernameController = TextEditingController();

  final passwordController = TextEditingController();

  final GlobalKey<FormState> _form = GlobalKey<FormState>();
  ValueNotifier<bool> passwordNotifier = ValueNotifier<bool>(true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF18171C),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 100,
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
                      // SizedBox(
                      //   height: 10,
                      // ),


                      ValueListenableBuilder(
                          valueListenable: passwordNotifier,
                          builder: (context, value, child) {
                            return CommonInputBox(

                              controller: passwordController,
                              maxLines: 1,
                              inputFormatter: [
                                FilteringTextInputFormatter(
                                    RegExp("[a-zA-Z0-9@#&*]"),
                                    allow: true)
                              ],
                              validator: (value) {
                                if (value.toString().isEmpty) {
                                  return "Enter Password";
                                }
                                return null;
                              },
                              isPassword: passwordNotifier.value,
                              label: "Password",
                              sufixIcon: Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: InkWell(
                                    onTap: () {
                                      passwordNotifier.value =
                                      ! passwordNotifier.value;
                                    },
                                    child: passwordNotifier.value
                                        ? SvgPicture.asset("assets/images/ic_closed_eye.svg",color: Colors.white,)
                                        : SvgPicture.asset("assets/images/ic_eye.svg",color: Colors.white,)),
                              ),
                              obscureText: passwordNotifier.value,
                            );
                          }),
                      // Spacer(flex: 23),
// Group: Group 4
                      SizedBox(
                        height: 20,
                      ),

                      CommonButton(
                          width: 300,
                          height: 50,
                          text: "LOGIN",

                          backGroundColor: Colors.white,
                          onPress: () {
                            if (_form.currentState?.validate() ?? false) {
                              if (usernameController.text ==
                                      "test1@gmail.com" &&
                                  passwordController.text == "12345") {
                                StorageUtil.putInt(SharedKeys.USER_ID, 1);
                                StorageUtil.putBoolean(SharedKeys.LOGIN, true);

                                Get.to(() => HomeScreen());
                              } else if (usernameController.text ==
                                  "test2@gmail.com" &&
                                  passwordController.text == "12345") {
                                StorageUtil.putInt(SharedKeys.USER_ID, 2);
                                StorageUtil.putBoolean(SharedKeys.LOGIN, true);
                                Get.to(() => HomeScreen());
                              }else if (usernameController.text ==
                                  "test3@gmail.com" &&
                                  passwordController.text == "12345") {
                                StorageUtil.putInt(SharedKeys.USER_ID, 3);
                                StorageUtil.putBoolean(SharedKeys.LOGIN, true);
                                Get.to(() => HomeScreen());
                              }
                              else if (usernameController.text ==
                                  "customer1" &&
                                  passwordController.text == "customer1pass@29") {
                                StorageUtil.putInt(SharedKeys.USER_ID, 4);
                                StorageUtil.putBoolean(SharedKeys.LOGIN, true);
                                Get.to(() => HomeScreen());
                              }
                              else if (usernameController.text ==
                                  "customer2" &&
                                  passwordController.text == "customer1pass@35") {
                                StorageUtil.putInt(SharedKeys.USER_ID, 5);
                                StorageUtil.putBoolean(SharedKeys.LOGIN, true);
                                Get.to(() => HomeScreen());
                              }
                              else if (usernameController.text ==
                                  "customer3" &&
                                  passwordController.text == "customer1pass@48") {
                                StorageUtil.putInt(SharedKeys.USER_ID, 6);
                                StorageUtil.putBoolean(SharedKeys.LOGIN, true);
                                Get.to(() => HomeScreen());
                              }
                              else{
                                CustomAlert.showGenericToast("enter Valid Credential");
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
