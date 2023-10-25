import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BaseController extends GetxController {
  void hideLoading() {
    //log("Show loading dismissed ...");
    if (Get.isDialogOpen == true) {
      Get.back();
    }
  }

  void showLoading([String? message]) {
    if (Get.isDialogOpen != true) {
      //log("Show loading called ...");
      Get.dialog(
        //barrierDismissible: false,
        Dialog(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const CircularProgressIndicator(),
                const SizedBox(height: 8),
                Text(message ?? 'Loading...'),
              ],
            ),
          ),
        ),
      );
    }
  }
}
