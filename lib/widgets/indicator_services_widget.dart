import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_service_flutter/constants/colors.dart';

class IndicatorServicesWidget extends StatelessWidget {
  final bool selected;

  // ignore: use_key_in_widget_constructors, prefer_const_constructors_in_immutables
  IndicatorServicesWidget({required this.selected});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3.5.w),
      height: 20.h,
      width: 20.w,
      decoration: BoxDecoration(
        color: const Color(0x00000000),
        shape: BoxShape.circle,
        border: Border.all(color: selected ? mainColor : Colors.grey),
      ),
      child: Container(
        height: 10.h,
        width: 10.w,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: selected ? mainColor : const Color(0x00000000),
        ),
      ),
    );
  }
}
