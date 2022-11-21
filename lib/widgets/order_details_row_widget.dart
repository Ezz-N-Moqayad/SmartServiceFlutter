// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_service_flutter/Shared/sharedPrefController.dart';
import 'package:smart_service_flutter/constants/colors.dart';

// ignore: camel_case_types
class orderDetailsRowWidget extends StatelessWidget {
  String title;
  double textSize;
  String subTitle;
  FontWeight fontWeight;
  Color color;

  orderDetailsRowWidget({
    required this.title,
    required this.subTitle,
    this.textSize = 14,
    this.color = smallText,
    this.fontWeight = FontWeight.normal,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 372.w,
      height: 48.h,
      child: Padding(
        padding: SharedPrefController().lanCode == 'en'
            ? EdgeInsets.only(
                left: 20.w,
                right: 16.w,
                top: 12.h,
                bottom: 12.h,
              )
            : EdgeInsets.only(
                left: 16.w,
                right: 20.w,
                top: 12.h,
                bottom: 12.h,
              ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  title,
                  // '',
                  style: TextStyle(
                    color: mainColor,
                    fontFamily: SharedPrefController().lanCode == 'ar'
                        ? 'Tajawal'
                        : 'Roboto',
                    fontWeight: FontWeight.bold,
                    fontSize: textSize.sp,
                  ),
                )
              ],
            ),
            Text(
              subTitle,
              style: TextStyle(
                fontSize: textSize.sp,
                color: color,
                fontFamily: SharedPrefController().lanCode == 'ar'
                    ? 'Tajawal'
                    : 'Roboto',
                fontWeight: fontWeight,
              ),
            )
          ],
        ),
      ),
    );
  }
}
