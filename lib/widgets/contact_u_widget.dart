import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_service_flutter/Shared/sharedPrefController.dart';
import 'package:smart_service_flutter/constants/colors.dart';

// ignore: must_be_immutable
class ContactUsWidget extends StatelessWidget {
  String title, subtitle;

  ContactUsWidget({
    required this.title,
    required this.subtitle,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: 50.h,
          width: 231.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                    color: bigText,
                    fontFamily: SharedPrefController().lanCode == 'ar'
                        ? 'Tajawal'
                        : 'Roboto',
                    fontWeight: FontWeight.bold,
                    fontSize: 14.sp),
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                subtitle,
                style: TextStyle(
                    color: smallText,
                    fontFamily: SharedPrefController().lanCode == 'ar'
                        ? 'Tajawal'
                        : 'Roboto',
                    fontSize: 14.sp),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
