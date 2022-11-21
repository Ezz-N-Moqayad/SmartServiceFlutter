import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class CustomAppBar extends StatelessWidget {
  Color color;
  double width, height;
  Widget child;

  CustomAppBar({
    required this.color,
    required this.width,
    required this.height,
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(55.r),
              bottomRight: Radius.circular(55.r))),
      child: child,
    );
  }
}
