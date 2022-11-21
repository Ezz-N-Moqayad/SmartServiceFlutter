import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_service_flutter/Shared/sharedPrefController.dart';
import 'package:smart_service_flutter/constants/colors.dart';

// ignore: must_be_immutable
class RatingsWidget extends StatelessWidget {
  String title;

  RatingsWidget(this.title); // ignore: use_key_in_widget_constructors

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(end: 8.w),
      child: Container(
        height: 32,
        decoration: BoxDecoration(
          color: const Color(0xFFE0E0E0),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.only(
              start: 15.w, top: 6.h, bottom: 7.h, end: 15.h),
          child: Text(
            title,
            style: TextStyle(
              color: mainColor,
              fontSize: 14,
              fontFamily:
                  SharedPrefController().lanCode == 'ar' ? 'Tajawal' : 'Roboto',
            ),
          ),
        ),
      ),
    );
  }
}
