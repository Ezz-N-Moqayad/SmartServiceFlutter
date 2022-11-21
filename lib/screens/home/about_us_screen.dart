import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_service_flutter/Shared/sharedPrefController.dart';
import 'package:smart_service_flutter/constants/colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:smart_service_flutter/widgets/contact_u_widget.dart';
import 'package:smart_service_flutter/widgets/custom_app_bar.dart';
import 'package:smart_service_flutter/widgets/service_widget.dart';
import 'package:smart_service_flutter/widgets/show_container.dart';
import 'package:smart_service_flutter/widgets/show_text.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppBar(
            color: primeColor,
            width: double.infinity.w,
            height: 156.h,
            child: SizedBox(
              width: 98.24.w,
              height: 29.h,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0.w),
                child: Row(
                  children: [
                    const Icon(
                      Icons.info_outline,
                      color: bigText,
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Text(
                      AppLocalizations.of(context)!.about_us,
                      style: TextStyle(
                        fontSize: 20.sp,
                        color: bigText,
                        fontWeight: FontWeight.bold,
                        fontFamily: SharedPrefController().lanCode == 'ar'
                            ? 'Tajawal'
                            : 'Roboto',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 24.h,
          ),
          SizedBox(
            height: 600.h,
            child: ListView(
              children: [
                ShowText(
                  text: AppLocalizations.of(context)!.whoUs,
                  color: mainColor,
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                    height: 265.h,
                    width: 379.w,
                    decoration: BoxDecoration(
                        color: backgroundColor,
                        borderRadius: BorderRadius.circular(12.r),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.shade300,
                              blurRadius: 20,
                              offset: const Offset(0, 0)),
                        ]),
                    child: Padding(
                      padding: EdgeInsets.all(15.0.w),
                      child: Text(
                        AppLocalizations.of(context)!.demoText,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                            fontSize: 15.sp,
                            color: smallText,
                            fontFamily: SharedPrefController().lanCode == 'ar'
                                ? 'Tajawal'
                                : 'Roboto',
                            height: 1.8.h),
                      ),
                    )),
                SizedBox(
                  height: 18.h,
                ),
                ShowText(
                  text: AppLocalizations.of(context)!.ourServices,
                  color: mainColor,
                ),
                SizedBox(
                  height: 20.h,
                ),
                showContainer(
                    widget: serviceWidget(
                      title: AppLocalizations.of(context)!
                          .requestWhateverServicesYouWant,
                    ),
                    height: 181.h),
                SizedBox(
                  height: 18.h,
                ),
                ShowText(
                  text: AppLocalizations.of(context)!.contactUs,
                  color: mainColor,
                ),
                SizedBox(
                  height: 20.h,
                ),
                showContainer(
                    widget: ContactUsWidget(
                      title: AppLocalizations.of(context)!.phoneNumber,
                      subtitle: '+972599223344',
                    ),
                    height: 215.h),
                SizedBox(
                  height: 20.h,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
