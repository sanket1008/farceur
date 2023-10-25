import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../widget/common_button.dart';

class CustomAlert {
  static void showGenericToast(String message) {
    Fluttertoast.showToast(
        msg: message,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.black,
        textColor: Colors.white,
        fontSize: 14.0);
  }

  static void showGenericDialogue(
      BuildContext context, String title, String description,
      {TextAlign textAlign = TextAlign.center}) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        title: Text(title,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 14,
            )),
        content: Text(
          description,
          textAlign: textAlign,
          style: const TextStyle(color: Colors.black),
        ),
        actions: [
          CommonButton(
            text: 'OK',
            onPress: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }

  static void showGenericDialogueWithActionListener(BuildContext context,
      String title, String description, Function() onClick) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              title: Text(
                title,
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 14,
                ),
              ),
              content: Text(
                description,
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.black),
              ),
              actions: [
                Center(
                  child: CommonButton(
                    outerPadding: EdgeInsets.zero,
                    innerPadding: EdgeInsets.zero,
                    text: 'OK',
                    onPress: onClick,
                  ),
                )
              ],
            ));
  }
}
