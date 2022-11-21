import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_service_flutter/Shared/sharedPrefController.dart';
import 'package:smart_service_flutter/constants/colors.dart';

class PageViewChild extends StatelessWidget {
  final String img, text, secondText;

  // ignore: prefer_const_constructors_in_immutables, use_key_in_widget_constructors
  PageViewChild(
      {required this.img, required this.text, required this.secondText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 55.w, right: 55.w),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Text(
                      text,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 28.sp,
                          fontFamily: SharedPrefController().lanCode == 'ar'
                              ? 'Tajawal'
                              : 'Roboto',
                          color: const Color(0xff2F2E41)),
                    ),
                  ],
                ),
                SizedBox(
                  height: 13.h,
                ),
                Text(
                  secondText,
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 20.sp,
                    fontFamily: SharedPrefController().lanCode == 'ar'
                        ? 'Tajawal'
                        : 'Roboto',
                    color: smallText,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 80.h,
            ),
            Image.asset(
              img,
              height: 277.91.h,
              width: 372.w,
            ),
            SizedBox(
              height: 21.h,
            ),
          ],
        ),
      ),
    );
  }
}
