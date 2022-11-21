import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_service_flutter/Shared/sharedPrefController.dart';
import 'package:smart_service_flutter/constants/colors.dart';
import 'package:smart_service_flutter/widgets/custom_button.dart';
import 'package:smart_service_flutter/widgets/display_logo.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:smart_service_flutter/widgets/pin_code.dart';

class ActivationScreen extends StatefulWidget {
  const ActivationScreen({Key? key}) : super(key: key);

  @override
  State<ActivationScreen> createState() => _ActivationScreenState();
}

class _ActivationScreenState extends State<ActivationScreen> {
  @override
  void setState(VoidCallback fn) {
    super.setState(fn);
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          crossAxisAlignment: SharedPrefController().lanCode == 'en'
              ? CrossAxisAlignment.end
              : CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/backgroundScreenLogin_top.png',
              fit: BoxFit.cover,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DisplayLogo(
                  image: 'assets/images/logoForLogin.png',
                ),
                SizedBox(height: 50.2.h),
                Text(
                  AppLocalizations.of(context)!.activationCode,
                  style: TextStyle(
                    color: bigText,
                    fontWeight: FontWeight.bold,
                    fontFamily: SharedPrefController().lanCode == 'ar'
                        ? 'Tajawal'
                        : 'Roboto',
                    fontSize: 28.sp,
                  ),
                ),
                SizedBox(height: 15.h),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 40.0.w, left: 40.w),
                      child: Text(
                        AppLocalizations.of(context)!.sendSms,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: smallText,
                          fontFamily: SharedPrefController().lanCode == 'ar'
                              ? 'Tajawal'
                              : 'Roboto',
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 40.0.w, left: 40.w),
                      child: Text(
                        AppLocalizations.of(context)!.numberOfCode,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: smallText,
                          fontFamily: SharedPrefController().lanCode == 'ar'
                              ? 'Tajawal'
                              : 'Roboto',
                        ),
                      ),
                    ),
                    SizedBox(height: 13.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // PinCodeField(),
                        SizedBox(width: 13.w),
                        PinCodeField(first: true, last: false),
                        SizedBox(width: 13.w),
                        PinCodeField(first: false, last: false),
                        SizedBox(width: 13.w),
                        PinCodeField(first: false, last: false),
                        SizedBox(width: 13.w),
                        PinCodeField(first: false, last: true),
                        // PinCodeField(myFocusNode: myFocusNode,controller: _controller),
                      ],
                    ),
                    SizedBox(height: 67.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 44.h,
                          width: 319.w,
                          child: CustomButton(
                            name: AppLocalizations.of(context)!.confirmNumber,
                            onPress: () {
                              Navigator.pushNamed(
                                  context, '/bottom_navigation');
                            },
                            color: mainColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 40.h),
                Text.rich(
                  TextSpan(
                    text: AppLocalizations.of(context)!.dontReceive,
                    children: [
                      TextSpan(
                        text: AppLocalizations.of(context)!.sendAgain,
                        style: TextStyle(
                            fontFamily: SharedPrefController().lanCode == 'ar'
                                ? 'Tajawal'
                                : 'Roboto',
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold,
                            color: mainColor),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
