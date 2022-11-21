import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_service_flutter/Shared/sharedPrefController.dart';
import 'package:smart_service_flutter/constants/colors.dart';

// ignore: must_be_immutable
class ShowBottomSheet extends StatelessWidget {
  String title;
  double heigt;
  double witdh;
  Widget widget;
  double topleft;
  double topRight;

  ShowBottomSheet({
    Key? key,
    required this.title,
    required this.widget,
    required this.witdh,
    required this.heigt,
    this.topRight = 0,
    this.topleft = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(topleft),
            topRight: Radius.circular(topRight)),
        boxShadow: const [
          BoxShadow(
            offset: Offset(0, -5),
            blurRadius: 21,
            color: smallText,
          )
        ],
      ),
      height: heigt.h,
      width: witdh.w,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 22.0.h, bottom: 17.5.h),
            child: Text(
              title,
              style: TextStyle(
                color: bigText,
                fontSize: 20,
                fontFamily: SharedPrefController().lanCode == 'ar'
                    ? 'Tajawal'
                    : 'Roboto',
              ),
            ),
          ),
          Divider(
            indent: 21.5.w,
            endIndent: 19.5.w,
            height: 1,
          ),
          SizedBox(
            height: 19.5.h,
          ),
          widget
        ],
      ),
    );
  }
}
