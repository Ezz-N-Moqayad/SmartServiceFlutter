import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_service_flutter/Shared/sharedPrefController.dart';
import 'package:smart_service_flutter/constants/colors.dart';

// ignore: must_be_immutable
class RowAppBar extends StatelessWidget {
  String title;
  double top;
  double left = 28;
  double right = 131.8;
  double bottom = 50;

  RowAppBar({
    Key? key,
    required this.title,
    this.top = 77,
    this.bottom = 50,
    this.left = 28,
    this.right = 125,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
        end: right.w,
        start: left.w,
        top: top.h,
        bottom: bottom.h,
      ),
      child: SizedBox(
        width: 280.w,
        height: 29.h,
        child: Row(children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios),
          ),
          SizedBox(
            width: 22.5.w,
          ),
          Text(
            title,
            style: TextStyle(
              color: bigText,
              fontFamily:
                  SharedPrefController().lanCode == 'ar' ? 'Tajawal' : 'Roboto',
              fontWeight: FontWeight.bold,
              fontSize: 20.sp,
            ),
          )
        ]),
      ),
    );
  }
}
