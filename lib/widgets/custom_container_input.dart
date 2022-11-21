import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_service_flutter/constants/colors.dart';
import 'package:smart_service_flutter/widgets/custom_text_field.dart';

// ignore: must_be_immutable
class CustomContainerInput extends StatelessWidget {
  Widget icon;
  String text;
  bool enabled;
  double height;
  CustomContainerInput(
      {Key? key,
        required this.text,
        this.height=44.0,
        this.icon = const Text(''),
        this.enabled = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 319.w,
      height: height.h,
      decoration: BoxDecoration(
          color: pinCode, borderRadius: BorderRadius.circular(10.r)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8.0.w, vertical: 3.h),
        child: CustomTextField(
            controller: TextEditingController(),
            enabled: enabled,
            icon: icon,
            color: smallText,
            hint: text,
            // 'أضف عنوان المنزل',
            textAlign: TextAlign.start),
      ),
    );
  }
}
