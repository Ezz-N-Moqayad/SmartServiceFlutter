import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  Color color;
  String hint;
  Widget icon;
  int maxLength;
  bool enabled;
  TextAlign textAlign;
  final TextEditingController controller;
  final TextInputType keyboardType;
  CustomTextField({
    this.textAlign = TextAlign.center,
    required this.color,
    this.icon = const Text(''),
    this.maxLength = 20,
    required this.hint,
    required this.controller,
    this.enabled = true,
    this.keyboardType = TextInputType.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      enabled: enabled,
      keyboardType: keyboardType,
      inputFormatters: [
        LengthLimitingTextInputFormatter(maxLength),
      ],
      textAlign: textAlign,
      decoration: InputDecoration(
        border: InputBorder.none,
        suffixIcon: icon,
        contentPadding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 3.h),
        hintStyle: TextStyle(
          color: color,
          fontSize: 15.sp,
          fontFamily: 'Tajawal',
        ),
        hintText: hint,
      ),
    );
  }
}
