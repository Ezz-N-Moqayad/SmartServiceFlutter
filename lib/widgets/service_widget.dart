// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_service_flutter/Shared/sharedPrefController.dart';
import 'package:smart_service_flutter/constants/colors.dart';

// ignore: camel_case_types
class serviceWidget extends StatelessWidget {
  String title;

  serviceWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
            color: smallText,
            fontFamily:
                SharedPrefController().lanCode == 'ar' ? 'Tajawal' : 'Roboto',
            fontWeight: FontWeight.bold,
            fontSize: 14.sp),
      ),
      leading: const Icon(
        Icons.arrow_forward_ios_outlined,
        size: 14,
        color: mainColor,
      ),
    );
  }
}
