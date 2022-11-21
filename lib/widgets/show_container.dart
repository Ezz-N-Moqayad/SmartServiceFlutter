// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_service_flutter/constants/colors.dart';

// ignore: camel_case_types
class showContainer extends StatelessWidget {
  Widget widget;
  double height;
  double width;

  showContainer({
    required this.widget,
    required this.height,
    this.width = 379,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width.w,
      decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(12.r),
          boxShadow: [
            BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 20,
                offset: const Offset(0, 0)),
          ]),
      child: MediaQuery.removePadding(
        removeTop: true,
        context: context,
        child: ListView.separated(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 1,
          itemBuilder: (context, index) {
            return widget;
          },
          separatorBuilder: (context, index) {
            return Divider(
              height: 1.h,
              thickness: 1,
            );
          },
        ),
      ),
    );
  }
}
