import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'common_button.dart';


customAcceptAndRejectBottomSheet({
  required BuildContext context,
  String? title,
  String? description,
  String? content,
  VoidCallback? onClickButtonOne,
  VoidCallback? onClickButtonSecond,
  String? buttonOneText,
  String? buttonSecondText,
  Gradient? gradientButtonOne,
  double? width,
  Gradient? gradientButtonSecond,
  TextStyle? style,
  TextStyle? descriptionStyle,
  TextAlign? descriptionTextAlign,
  TextAlign? contentTextAlign,
  Color? color,
}) {
  showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor:Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(15.0)),
      ),
      enableDrag: true,
      context: context,
      builder: (context) {
        return Column(mainAxisSize: MainAxisSize.min, children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    title ?? "",

                    style:TextStyle(color: Colors.black),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Get.back();
                  },
                  child: Icon(
                    Icons.cancel,
                    color: Colors.orange,
                    size: 23,
                  ),
                )
              ],
            ),
          ),
          const Divider(
            height: 10,
            thickness: 1,
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(children: [
              Text(
                description ?? "",
                textAlign: descriptionTextAlign,
                style: descriptionStyle ?? context.textTheme.titleMedium,
              ),
            ]),
          ),
          SizedBox(height: 20,),
          (content?.isNotEmpty == true)
              ? Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(children: [
                    Text(
                      content ?? "",
                      textAlign: contentTextAlign,
                    ),
                    SizedBox(height: 20,),
                  ]),
                )
              : IgnorePointer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CommonButton(
                  backGroundColor: color ?? Colors.white,
                  onPress: onClickButtonOne,
                  width: width ?? Get.width * 0.4,
                  boarderColor: Colors.orange,
                  borderRadius: BorderRadius.circular(6),
                  text: buttonOneText ?? "",
                  textStyle: Theme.of(context)
                      .textTheme
                      .titleSmall
                      ?.copyWith(color: Colors.orange)),
              CommonButton(
                backGroundColor:Colors.orange,
                onPress: onClickButtonSecond,
                width: width ?? Get.width * 0.4,
                boarderColor: Colors.orange,
                borderRadius: BorderRadius.circular(6),
                text: buttonSecondText ?? "",
              )
            ],
          ),
          SizedBox(height: 10,)
          ]);
      });
}
