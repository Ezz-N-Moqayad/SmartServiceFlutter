import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class DisplayLogo extends StatelessWidget {
  String image;

  DisplayLogo({
    required this.image,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        image,
        height: 142.77.h,
        width: 150.w,
      ),
    );
  }
}
