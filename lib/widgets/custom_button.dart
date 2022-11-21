import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_service_flutter/constants/colors.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  String name;
  VoidCallback onPress;
  Color color;
  Color colorText;
  Color colorborder;

  CustomButton({
    required this.name,
    required this.onPress,
    this.colorText = Colors.white,
    this.colorborder = mainColor,
    required this.color,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      style: ElevatedButton.styleFrom(
        primary: color,
        side: BorderSide(
          width: 1.w,
          color: colorborder,
        ),
      ),
      child: Text(
        name,
        style: TextStyle(
          fontSize: 14.sp,
          color: colorText,
          fontFamily: 'Tajawal',
        ),
      ),
    );
  }
}
