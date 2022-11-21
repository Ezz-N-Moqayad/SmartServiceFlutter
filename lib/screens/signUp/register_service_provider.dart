import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_service_flutter/Shared/sharedPrefController.dart';
import 'package:smart_service_flutter/constants/colors.dart';
import 'package:smart_service_flutter/widgets/body_registration.dart';
import 'package:smart_service_flutter/widgets/custom_button.dart';
import 'package:smart_service_flutter/widgets/custom_text_field.dart';

class RegisterServiceProviderScreen extends StatelessWidget {
  const RegisterServiceProviderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          AppLocalizations.of(context)!.registerServiceProvider,
          style: TextStyle(
            color: Colors.black,
            fontFamily:
                SharedPrefController().lanCode == 'ar' ? 'Tajawal' : 'Roboto',
          ),
        ),
      ),
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: SafeArea(
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
                      style: TextStyle(
                        color: smallText,
                        fontSize: 14.sp,
                        fontFamily: SharedPrefController().lanCode == 'ar'
                            ? 'Tajawal'
                            : 'Roboto',
                      ),
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
                  SizedBox(
                    height: 19.h
                  ),
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
                            controller: TextEditingController(),
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            color: smallText,
                            hint: '+970',
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: 5.0.w, right: 5.w, bottom: 13.h),
                    child: Text(
                      AppLocalizations.of(context)!.location,
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 44.h,
                          width: 264.w,
                          decoration: BoxDecoration(
                            color: pinCode,
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: CustomTextField(
                            controller: TextEditingController(),
                            textAlign: TextAlign.start,
                            color: smallText,
                            hint:
                                AppLocalizations.of(context)!.enterYourlocation,
                          ),
                        ),
                        Container(
                          height: 44.h,
                          width: 44.w,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: primeColor,
                          ),
                          child: const Icon(
                            Icons.location_on,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 19.h,
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: 5.0.w, right: 5.w, bottom: 13.h),
                    child: Text(
                      AppLocalizations.of(context)!.serviceSelection,
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 44.h,
                          width: 155.w,
                          decoration: BoxDecoration(
                            color: pinCode,
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(8.0.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  AppLocalizations.of(context)!.service,
                                  style: TextStyle(
                                    color: smallText,
                                    fontFamily:
                                        SharedPrefController().lanCode == 'ar'
                                            ? 'Tajawal'
                                            : 'Roboto',
                                  ),
                                ),
                                const Icon(
                                  Icons.keyboard_arrow_down_sharp,
                                  color: smallText,
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: 44.h,
                          width: 155.w,
                          decoration: BoxDecoration(
                            color: pinCode,
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(8.0.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  AppLocalizations.of(context)!.subService,
                                  style: TextStyle(
                                    color: smallText,
                                    fontFamily:
                                        SharedPrefController().lanCode == 'ar'
                                            ? 'Tajawal'
                                            : 'Roboto',
                                  ),
                                ),
                                const Icon(
                                  Icons.keyboard_arrow_down_sharp,
                                  color: smallText,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 19.h,
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: 5.0.w, right: 5.w, bottom: 13.h),
                    child: Text(
                      AppLocalizations.of(context)!.priceOfService,
                      style: TextStyle(
                        color: smallText,
                        fontSize: 14.sp,
                        fontFamily: SharedPrefController().lanCode == 'ar'
                            ? 'Tajawal'
                            : 'Roboto',
                      ),
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
                          hint:
                              AppLocalizations.of(context)!.enterpriceOfService,
                          textAlign: TextAlign.start),
                    ),
                  ),
                  SizedBox(
                    height: 19.h,
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: 5.0.w, right: 5.w, bottom: 13.h),
                    child: Text(
                      AppLocalizations.of(context)!.serviceDetails,
                      style: TextStyle(
                        color: smallText,
                        fontSize: 14.sp,
                        fontFamily: SharedPrefController().lanCode == 'ar'
                            ? 'Tajawal'
                            : 'Roboto',
                      ),
                    ),
                  ),
                  Container(
                    width: 319.w,
                    height: 88.h,
                    decoration: BoxDecoration(
                        color: pinCode,
                        borderRadius: BorderRadius.circular(10.r)),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0.w),
                      child: CustomTextField(
                          controller: TextEditingController(),
                          maxLength: 80,
                          color: smallText,
                          hint: AppLocalizations.of(context)!
                              .enterYourServiceDetails,
                          textAlign: TextAlign.start),
                    ),
                  ),
                  SizedBox(
                    height: 19.h,
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: 5.0.w, right: 5.w, bottom: 13.h),
                    child: Text(
                      AppLocalizations.of(context)!.address,
                      style: TextStyle(
                        color: smallText,
                        fontSize: 14.sp,
                        fontFamily: SharedPrefController().lanCode == 'ar'
                            ? 'Tajawal'
                            : 'Roboto',
                      ),
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
                          maxLength: 80,
                          color: smallText,
                          hint:
                              AppLocalizations.of(context)!.enterAddressDetails,
                          textAlign: TextAlign.start),
                    ),
                  ),
                  SizedBox(
                    height: 19.h,
                  ),
                  Padding(
                    padding:
                        EdgeInsets.only(left: 5.0.w, right: 5.w, bottom: 13.h),
                    child: Text(
                      AppLocalizations.of(context)!.workTime,
                      style: TextStyle(
                        color: smallText,
                        fontSize: 14.sp,
                        fontFamily: SharedPrefController().lanCode == 'ar'
                            ? 'Tajawal'
                            : 'Roboto',
                      ),
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
                          maxLength: 80,
                          color: smallText,
                          hint: AppLocalizations.of(context)!.enterWorkingTime,
                          textAlign: TextAlign.start),
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
                  onPress: () {
                    Navigator.pushNamed(context, '/bottom_navigation');
                  },
                  color: mainColor,
                ),
              ),
              SizedBox(
                height: 50.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
