import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_service_flutter/constants/colors.dart';

class StarsWidget extends StatelessWidget {
  const StarsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.star, color: primeColor),
        SizedBox(width: 8.1.w),
        const Icon(Icons.star, color: primeColor),
        SizedBox(width: 8.1.w),
        const Icon(Icons.star, color: primeColor),
        SizedBox(width: 8.1.w),
        const Icon(Icons.star, color: primeColor),
        SizedBox(width: 8.1.w),
        const Icon(Icons.star, color: primeColor),
        SizedBox(width: 8.1.w),
      ],
    );
  }
}
