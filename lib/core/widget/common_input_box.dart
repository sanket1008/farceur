import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';


class CommonInputBox extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final String? helperText;
  final TextStyle? suffixStyle;
  final Color? boarderColor;
  final Color? hintTextColor;
  final IconData? prefixIcon;
  final Widget? sufixIcon;
  final Widget? suffixValue;
  final Widget? prefix;
  final Widget? prefixValue;
  final bool? isPassword;
  final bool? showPassword;
  final bool? enable;
  final bool? readOnly;
  final Function()? onPressEye;
  final int? maxLines;
  final int? minLines;
  final String label;
  final int? maxLength;
  final String? Function(String?)? validator;
  final String? Function(String?)? onSubmit;
  final bool? headerEnabled;
  final TextInputType? inputType;
  final Function(String)? onTextChange;
  final bool? isMandatoryField;
  final bool? obscureText;
  final bool? showCursor;
  final GestureTapCallback? onTap;
  final bool? isBorderEnabled;
  final bool? isFilledColor;
  final Color? filledColor;
  final EdgeInsets? padding;
  final TextStyle? hintStyle;
  final TextStyle? labelStyle;
  final TextStyle? textStyle;
  final BorderRadius? borderRadius;
  final double? radius;
  final String? initialValue;
  final List<TextInputFormatter>? inputFormatter;
  final String? labelText;

  const CommonInputBox({
    super.key,
    this.controller,
    this.hintText,
    this.suffixValue,
    this.helperText,
    this.boarderColor,
    this.prefixIcon,
    this.sufixIcon,
    this.enable,
    this.readOnly,
    this.isPassword,
    this.onPressEye,
    this.showPassword,
    this.maxLines,
    this.minLines,
    required this.label,
    this.validator,
    this.maxLength,
    this.headerEnabled,
    this.inputType,
    this.onTextChange,
    this.isMandatoryField,
    this.obscureText,
    this.showCursor,
    this.onTap,
    this.isBorderEnabled,
    this.isFilledColor,
    this.filledColor,
    this.prefix,
    this.hintTextColor,
    this.suffixStyle,
    this.padding,
    this.hintStyle,
    this.borderRadius,
    this.radius,
    this.initialValue,
    this.labelStyle,
    this.inputFormatter,
    this.prefixValue,
    this.onSubmit,
    this.labelText,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          padding ?? const EdgeInsets.only(left: 15.0, right: 15.0, top: 10),
      child: Column(
        children: [
          Align(
              alignment: Alignment.topLeft,
              child: Row(
                children: [
                  Visibility(
                      visible: headerEnabled ?? true,
                      child: Text(
                        label,
                        style:TextStyle(color: Colors.white),
                      )),
                  SizedBox(width: 10,),
                  Visibility(
                      visible: isMandatoryField ?? false, child: Text("*")),
                ],
              )),
          const SizedBox(
            height: 5,
          ),
          TextFormField(
            initialValue: initialValue,
            textAlignVertical: TextAlignVertical.center,
            onTap: onTap,
            showCursor: showCursor,
            onChanged: onTextChange,
            keyboardType: inputType,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            maxLength: maxLength != null ? maxLength : null,
            autofocus: false,
            maxLines: isPassword ?? false ? 1 : maxLines,
            minLines: isPassword ?? false ? 1 : minLines,
            style:
                textStyle ?? TextStyle(color: Colors.white),
            controller: controller,
            readOnly: readOnly ?? false,
            obscureText: isPassword ?? false,
            inputFormatters: inputFormatter ?? [],
            decoration: InputDecoration(
              errorStyle: const TextStyle(height: 0),
              border: _buildOutlineInputBorder(context),
              errorBorder:
                  _buildOutlineInputBorder(context, isErrorEnabled: true),
              focusedErrorBorder: _buildOutlineInputBorder(context),
              contentPadding: const EdgeInsets.only(
                  left: 15, top: 15, bottom: 15, right: 15),
              counter: const Offstage(),
              fillColor: Color(0xFF3A3B3C),
              filled: true,
              isDense: true,
              prefixIconConstraints: const BoxConstraints(
                minWidth: 5,
                minHeight: 5,
              ),
              suffixIconConstraints: const BoxConstraints(
                minWidth: 2,
                minHeight: 2,
              ),

              enabledBorder: _buildOutlineInputBorder(context),
              focusedBorder: _buildOutlineInputBorder(context),
              disabledBorder: _buildOutlineInputBorder(context),
              // suffix: sufixIcon,
              suffixIcon: sufixIcon,
              suffix: suffixValue,
              prefixIcon: prefix,
              prefix: prefixValue,
              suffixStyle: suffixStyle,
              hintText: hintText ?? label,
              hintStyle: hintStyle ??
                  context.textTheme.bodyMedium?.copyWith(
                      color: Colors.white),
              labelText: labelText,
              labelStyle: labelStyle ?? context.textTheme.bodyMedium,
              floatingLabelStyle: Theme.of(context).textTheme.bodyMedium,
              floatingLabelBehavior: FloatingLabelBehavior.always,
              floatingLabelAlignment: FloatingLabelAlignment.start,

              enabled: enable ?? true,
            ),
            validator: validator,
            onFieldSubmitted: onSubmit,
          ),
        ],
      ),
    );
  }

  OutlineInputBorder _buildOutlineInputBorder(BuildContext context,
      {bool? isErrorEnabled}) {
    return OutlineInputBorder(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide(
          color: isErrorEnabled == true
              ? Colors.red
              : Color(0xFF3A3B3C),
          width: 0,
        ));
  }
}
