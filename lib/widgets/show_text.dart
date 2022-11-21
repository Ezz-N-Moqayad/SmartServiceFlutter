import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_service_flutter/Shared/sharedPrefController.dart';

// ignore: must_be_immutable
class ShowText extends StatelessWidget {
  String text;
  Color color;
  double paddingHorizontal;

  ShowText({
    required this.text,
    required this.color,
    this.paddingHorizontal = 24,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: paddingHorizontal.w),
      child: Row(
        children: [
          Text(
            text,
            // AppLocalizations.of(context)!.whoUs,
            style: TextStyle(
              color: color,
              fontFamily:
                  SharedPrefController().lanCode == 'ar' ? 'Tajawal' : 'Roboto',
              fontWeight: FontWeight.bold,
              fontSize: SharedPrefController().lanCode == 'en' ? 14.sp : 18.sp,
            ),
          ),
        ],
      ),
    );
  }
}
