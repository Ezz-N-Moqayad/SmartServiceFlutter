import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_service_flutter/Shared/sharedPrefController.dart';
import 'package:smart_service_flutter/constants/colors.dart';

// ignore: must_be_immutable
class BodyRegistration extends StatelessWidget {
  String title, subtitle;

  BodyRegistration({
    required this.title,
    required this.subtitle,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 147.h,
        width: 319.w,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  title,
                  style: TextStyle(
                    color: bigText,
                    fontSize: 28.sp,
                    fontFamily: SharedPrefController().lanCode == 'ar'
                        ? 'Tajawal'
                        : 'Roboto',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 8.h,
            ),
            Text(
              subtitle,
              textAlign: TextAlign.start,
              style: TextStyle(
                color: smallText,
                fontFamily: SharedPrefController().lanCode == 'ar'
                    ? 'Tajawal'
                    : 'Roboto',
                fontSize: 20.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
