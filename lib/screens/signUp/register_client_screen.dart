import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_service_flutter/Shared/sharedPrefController.dart';
import 'package:smart_service_flutter/constants/colors.dart';
import 'package:smart_service_flutter/widgets/body_registration.dart';
import 'package:smart_service_flutter/widgets/custom_button.dart';
import 'package:smart_service_flutter/widgets/custom_text_field.dart';

class RegisterClientScreen extends StatelessWidget {
  const RegisterClientScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          AppLocalizations.of(context)!.registerClient,
          style: TextStyle(
            color: Colors.black,
            fontFamily:
                SharedPrefController().lanCode == 'ar' ? 'Tajawal' : 'Roboto',
          ),
        ),
      ),
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 122.h,
              ),
              BodyRegistration(
                title: AppLocalizations.of(context)!.enterData,
                subtitle:
                    AppLocalizations.of(context)!.descriptionForResisterClient,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        EdgeInsets.only(left: 5.0.w, right: 5.w, bottom: 13.h),
                    child: Text(
                      AppLocalizations.of(context)!.name,
                      style: const TextStyle(color: smallText, fontSize: 14),
                    ),
                  ),
                  Container(
                    width: 319.w,
                    height: 44.h,
                    decoration: BoxDecoration(
                        color: pinCode,
                        borderRadius: BorderRadius.circular(10.r)),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0.w),
                      child: CustomTextField(
                          controller: TextEditingController(),
                          color: smallText,
                          hint: AppLocalizations.of(context)!.enterYourName,
                          textAlign: TextAlign.start),
                    ),
                  ),
                  SizedBox(height: 19.h),
                  Padding(
                    padding:
                        EdgeInsets.only(left: 5.0.w, right: 5.w, bottom: 13.h),
                    child: Text(
                      AppLocalizations.of(context)!.enterNumber,
                      style: TextStyle(
                        color: smallText,
                        fontSize: 14.sp,
                        fontFamily: SharedPrefController().lanCode == 'ar'
                            ? 'Tajawal'
                            : 'Roboto',
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 319.w,
                    height: 44.h,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 44.h,
                          width: 206.w,
                          decoration: BoxDecoration(
                            color: pinCode,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: CustomTextField(
                            controller: TextEditingController(),
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.start,
                            color: smallText,
                            hint: AppLocalizations.of(context)!.enterNumber,
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Container(
                          height: 44.h,
                          width: 101.w,
                          decoration: BoxDecoration(
                            color: pinCode,
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: CustomTextField(
                            enabled: false,
                            controller: TextEditingController(),
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            color: bigText,
                            hint: '+970',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 67.h,
              ),
              SizedBox(
                width: 319.w,
                height: 44.h,
                child: CustomButton(
                  name: AppLocalizations.of(context)!.next,
                  onPress: () {},
                  color: mainColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
