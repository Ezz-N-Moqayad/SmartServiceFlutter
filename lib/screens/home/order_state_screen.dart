// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_service_flutter/Shared/sharedPrefController.dart';
import 'package:smart_service_flutter/constants/colors.dart';
import 'package:smart_service_flutter/widgets/custom_app_bar.dart';
import 'package:smart_service_flutter/widgets/custom_button.dart';
import 'package:smart_service_flutter/widgets/show_container.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class OrderStateScreen extends StatelessWidget {
  const OrderStateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            CustomAppBar(
              color: primeColor,
              width: 429.w,
              height: 156.h,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 20),
                  Text(
                    AppLocalizations.of(context)!.order_status,
                    style: TextStyle(
                      color: bigText,
                      fontFamily: SharedPrefController().lanCode == 'ar'
                          ? 'Tajawal'
                          : 'Roboto',
                      fontWeight: FontWeight.bold,
                      fontSize: 24.sp,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(
                  bottom: 15.0.h, left: 15.w, right: 15.w, top: 15.h),
              child: SizedBox(
                height: 655.h,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      showContainer(
                        widget: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.only(
                                      top: 15.h, start: 16.w),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '${AppLocalizations.of(context)!.order_number} 2',
                                        style: TextStyle(
                                          color: bigText,
                                          fontFamily:
                                              SharedPrefController().lanCode ==
                                                      'ar'
                                                  ? 'Tajawal'
                                                  : 'Roboto',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18.sp,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 11.h,
                                      ),
                                      Text(
                                        '${AppLocalizations.of(context)!.ordered_on} 1/4/2021',
                                        style: TextStyle(
                                          color: smallText,
                                          fontFamily:
                                              SharedPrefController().lanCode ==
                                                      'ar'
                                                  ? 'Tajawal'
                                                  : 'Roboto',
                                          fontSize: 14.sp,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.only(
                                      top: 31.h, end: 22.w),
                                  child: Row(
                                    children: [
                                      TextButton(
                                        onPressed: () {},
                                        child: Text(
                                          AppLocalizations.of(context)!
                                              .view_details,
                                          style: TextStyle(
                                            color: mainColor,
                                            fontFamily: SharedPrefController()
                                                        .lanCode ==
                                                    'ar'
                                                ? 'Tajawal'
                                                : 'Roboto',
                                            fontSize: 14.sp,
                                          ),
                                        ),
                                      ),
                                      Icon(
                                        Icons.arrow_back_ios_new_outlined,
                                        color: mainColor,
                                        size: 18.sp,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            Divider(
                              height: 1.h,
                              thickness: 1,
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.only(
                                  top: 13.h, start: 19.6.w),
                              child: Text(
                                AppLocalizations.of(context)!
                                    .electrical_maintenance_worker_request,
                                style: TextStyle(
                                  color: smallText,
                                  fontFamily:
                                      SharedPrefController().lanCode == 'ar'
                                          ? 'Tajawal'
                                          : 'Roboto',
                                  fontSize: 14.sp,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.only(
                                  top: 13.h, start: 21.w, bottom: 18.5.h),
                              child: CustomButton(
                                  name: AppLocalizations.of(context)!
                                      .order_arrived,
                                  colorborder: Colors.green,
                                  onPress: () {},
                                  color: Colors.green),
                            )
                          ],
                        ),
                        height: 200.h,
                        width: 372.w,
                      ),
                      SizedBox(
                        height: 14.h,
                      ),
                      showContainer(
                        widget: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.only(
                                      top: 15.h, start: 16.w),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '${AppLocalizations.of(context)!.order_number} 2',
                                        style: TextStyle(
                                          color: bigText,
                                          fontFamily:
                                              SharedPrefController().lanCode ==
                                                      'ar'
                                                  ? 'Tajawal'
                                                  : 'Roboto',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18.sp,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 11.h,
                                      ),
                                      Text(
                                        '${AppLocalizations.of(context)!.ordered_on} 1/4/2021',
                                        style: TextStyle(
                                          color: smallText,
                                          fontFamily:
                                              SharedPrefController().lanCode ==
                                                      'ar'
                                                  ? 'Tajawal'
                                                  : 'Roboto',
                                          fontSize: 14.sp,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.only(
                                      top: 31.h, end: 22.w),
                                  child: Row(
                                    children: [
                                      TextButton(
                                        onPressed: () {},
                                        child: Text(
                                          AppLocalizations.of(context)!
                                              .view_details,
                                          style: TextStyle(
                                            color: mainColor,
                                            fontFamily: SharedPrefController()
                                                        .lanCode ==
                                                    'ar'
                                                ? 'Tajawal'
                                                : 'Roboto',
                                            fontSize: 14.sp,
                                          ),
                                        ),
                                      ),
                                      Icon(
                                        Icons.arrow_back_ios_new_outlined,
                                        color: mainColor,
                                        size: 18.sp,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            Divider(
                              height: 1.h,
                              thickness: 1,
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.only(
                                  top: 13.h, start: 19.6.w),
                              child: Text(
                                AppLocalizations.of(context)!
                                    .electrical_maintenance_worker_request,
                                style: TextStyle(
                                  color: smallText,
                                  fontFamily:
                                      SharedPrefController().lanCode == 'ar'
                                          ? 'Tajawal'
                                          : 'Roboto',
                                  fontSize: 14.sp,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.only(
                                  top: 13.h, start: 21.w, bottom: 18.5.h),
                              child: CustomButton(
                                  name: AppLocalizations.of(context)!
                                      .i_am_waiting,
                                  colorborder: Colors.red,
                                  onPress: () {},
                                  color: Colors.red),
                            )
                          ],
                        ),
                        height: 200.h,
                        width: 372.w,
                      ),
                      SizedBox(
                        height: 14.h,
                      ),
                      showContainer(
                        widget: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.only(
                                      top: 15.h, start: 16.w),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '${AppLocalizations.of(context)!.order_number} 2',
                                        style: TextStyle(
                                          color: bigText,
                                          fontFamily:
                                              SharedPrefController().lanCode ==
                                                      'ar'
                                                  ? 'Tajawal'
                                                  : 'Roboto',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18.sp,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 11.h,
                                      ),
                                      Text(
                                        '${AppLocalizations.of(context)!.ordered_on} 1/4/2021',
                                        style: TextStyle(
                                          color: smallText,
                                          fontFamily:
                                              SharedPrefController().lanCode ==
                                                      'ar'
                                                  ? 'Tajawal'
                                                  : 'Roboto',
                                          fontSize: 14.sp,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.only(
                                      top: 31.h, end: 22.w),
                                  child: Row(
                                    children: [
                                      TextButton(
                                        onPressed: () {},
                                        child: Text(
                                          AppLocalizations.of(context)!
                                              .view_details,
                                          style: TextStyle(
                                            color: mainColor,
                                            fontFamily: SharedPrefController()
                                                        .lanCode ==
                                                    'ar'
                                                ? 'Tajawal'
                                                : 'Roboto',
                                            fontSize: 14.sp,
                                          ),
                                        ),
                                      ),
                                      Icon(
                                        Icons.arrow_back_ios_new_outlined,
                                        color: mainColor,
                                        size: 18.sp,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            Divider(
                              height: 1.h,
                              thickness: 1,
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.only(
                                  top: 13.h, start: 19.6.w),
                              child: Text(
                                AppLocalizations.of(context)!
                                    .electrical_maintenance_worker_request,
                                style: TextStyle(
                                  color: smallText,
                                  fontFamily:
                                      SharedPrefController().lanCode == 'ar'
                                          ? 'Tajawal'
                                          : 'Roboto',
                                  fontSize: 14.sp,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.only(
                                  top: 13.h, start: 21.w, bottom: 18.5.h),
                              child: CustomButton(
                                  name: AppLocalizations.of(context)!
                                      .order_arrived,
                                  colorborder: Colors.green,
                                  onPress: () {},
                                  color: Colors.green),
                            )
                          ],
                        ),
                        height: 200.h,
                        width: 372.w,
                      ),
                      SizedBox(
                        height: 14.h,
                      ),
                      showContainer(
                        widget: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.only(
                                      top: 15.h, start: 16.w),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '${AppLocalizations.of(context)!.order_number} 2',
                                        style: TextStyle(
                                          color: bigText,
                                          fontFamily:
                                              SharedPrefController().lanCode ==
                                                      'ar'
                                                  ? 'Tajawal'
                                                  : 'Roboto',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18.sp,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 11.h,
                                      ),
                                      Text(
                                        '${AppLocalizations.of(context)!.ordered_on} 1/4/2021',
                                        style: TextStyle(
                                          color: smallText,
                                          fontFamily:
                                              SharedPrefController().lanCode ==
                                                      'ar'
                                                  ? 'Tajawal'
                                                  : 'Roboto',
                                          fontSize: 14.sp,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.only(
                                      top: 31.h, end: 22.w),
                                  child: Row(
                                    children: [
                                      TextButton(
                                        onPressed: () {},
                                        child: Text(
                                          AppLocalizations.of(context)!
                                              .view_details,
                                          style: TextStyle(
                                            color: mainColor,
                                            fontFamily: SharedPrefController()
                                                        .lanCode ==
                                                    'ar'
                                                ? 'Tajawal'
                                                : 'Roboto',
                                            fontSize: 14.sp,
                                          ),
                                        ),
                                      ),
                                      Icon(
                                        Icons.arrow_back_ios_new_outlined,
                                        color: mainColor,
                                        size: 18.sp,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            Divider(
                              height: 1.h,
                              thickness: 1,
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.only(
                                  top: 13.h, start: 19.6.w),
                              child: Text(
                                AppLocalizations.of(context)!
                                    .electrical_maintenance_worker_request,
                                style: TextStyle(
                                  color: smallText,
                                  fontFamily:
                                      SharedPrefController().lanCode == 'ar'
                                          ? 'Tajawal'
                                          : 'Roboto',
                                  fontSize: 14.sp,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.only(
                                  top: 13.h, start: 21.w, bottom: 18.5.h),
                              child: CustomButton(
                                  name: AppLocalizations.of(context)!
                                      .i_am_waiting,
                                  colorborder: Colors.red,
                                  onPress: () {},
                                  color: Colors.red),
                            )
                          ],
                        ),
                        height: 200.h,
                        width: 372.w,
                      ),
                      SizedBox(
                        height: 14.h,
                      ),
                      showContainer(
                        widget: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.only(
                                      top: 15.h, start: 16.w),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '${AppLocalizations.of(context)!.order_number} 2',
                                        style: TextStyle(
                                          color: bigText,
                                          fontFamily:
                                              SharedPrefController().lanCode ==
                                                      'ar'
                                                  ? 'Tajawal'
                                                  : 'Roboto',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18.sp,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 11.h,
                                      ),
                                      Text(
                                        '${AppLocalizations.of(context)!.ordered_on} 1/4/2021',
                                        style: TextStyle(
                                          color: smallText,
                                          fontFamily:
                                              SharedPrefController().lanCode ==
                                                      'ar'
                                                  ? 'Tajawal'
                                                  : 'Roboto',
                                          fontSize: 14.sp,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.only(
                                      top: 31.h, end: 22.w),
                                  child: Row(
                                    children: [
                                      TextButton(
                                        onPressed: () {},
                                        child: Text(
                                          AppLocalizations.of(context)!
                                              .view_details,
                                          style: TextStyle(
                                            color: mainColor,
                                            fontFamily: SharedPrefController()
                                                        .lanCode ==
                                                    'ar'
                                                ? 'Tajawal'
                                                : 'Roboto',
                                            fontSize: 14.sp,
                                          ),
                                        ),
                                      ),
                                      Icon(
                                        Icons.arrow_back_ios_new_outlined,
                                        color: mainColor,
                                        size: 18.sp,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            Divider(
                              height: 1.h,
                              thickness: 1,
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.only(
                                  top: 13.h, start: 19.6.w),
                              child: Text(
                                AppLocalizations.of(context)!
                                    .electrical_maintenance_worker_request,
                                style: TextStyle(
                                  color: smallText,
                                  fontFamily:
                                      SharedPrefController().lanCode == 'ar'
                                          ? 'Tajawal'
                                          : 'Roboto',
                                  fontSize: 14.sp,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.only(
                                  top: 13.h, start: 21.w, bottom: 18.5.h),
                              child: CustomButton(
                                  name: AppLocalizations.of(context)!
                                      .order_arrived,
                                  colorborder: Colors.green,
                                  onPress: () {},
                                  color: Colors.green),
                            )
                          ],
                        ),
                        height: 200.h,
                        width: 372.w,
                      ),
                      SizedBox(
                        height: 14.h,
                      ),
                      showContainer(
                        widget: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.only(
                                      top: 15.h, start: 16.w),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '${AppLocalizations.of(context)!.order_number} 2',
                                        style: TextStyle(
                                          color: bigText,
                                          fontFamily:
                                              SharedPrefController().lanCode ==
                                                      'ar'
                                                  ? 'Tajawal'
                                                  : 'Roboto',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18.sp,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 11.h,
                                      ),
                                      Text(
                                        '${AppLocalizations.of(context)!.ordered_on} 1/4/2021',
                                        style: TextStyle(
                                          color: smallText,
                                          fontFamily:
                                              SharedPrefController().lanCode ==
                                                      'ar'
                                                  ? 'Tajawal'
                                                  : 'Roboto',
                                          fontSize: 14.sp,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.only(
                                      top: 31.h, end: 22.w),
                                  child: Row(
                                    children: [
                                      TextButton(
                                        onPressed: () {},
                                        child: Text(
                                          AppLocalizations.of(context)!
                                              .view_details,
                                          style: TextStyle(
                                            color: mainColor,
                                            fontFamily: SharedPrefController()
                                                        .lanCode ==
                                                    'ar'
                                                ? 'Tajawal'
                                                : 'Roboto',
                                            fontSize: 14.sp,
                                          ),
                                        ),
                                      ),
                                      Icon(
                                        Icons.arrow_back_ios_new_outlined,
                                        color: mainColor,
                                        size: 18.sp,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 15.h,
                            ),
                            Divider(
                              height: 1.h,
                              thickness: 1,
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.only(
                                  top: 13.h, start: 19.6.w),
                              child: Text(
                                AppLocalizations.of(context)!
                                    .electrical_maintenance_worker_request,
                                style: TextStyle(
                                  color: smallText,
                                  fontFamily:
                                      SharedPrefController().lanCode == 'ar'
                                          ? 'Tajawal'
                                          : 'Roboto',
                                  fontSize: 14.sp,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.only(
                                  top: 13.h, start: 21.w, bottom: 18.5.h),
                              child: CustomButton(
                                  name: AppLocalizations.of(context)!
                                      .i_am_waiting,
                                  colorborder: Colors.red,
                                  onPress: () {},
                                  color: Colors.red),
                            )
                          ],
                        ),
                        height: 200.h,
                        width: 372.w,
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class showOrders extends StatelessWidget {
  String title;
  String subSitle;

  showOrders({
    required this.title,
    required this.subSitle,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            color: bigText,
            fontFamily:
                SharedPrefController().lanCode == 'ar' ? 'Tajawal' : 'Roboto',
            fontWeight: FontWeight.bold,
            fontSize: 21.sp,
          ),
        ),
        SizedBox(
          height: 11.h,
        ),
        Text(
          subSitle,
          style: TextStyle(
            color: smallText,
            fontFamily:
                SharedPrefController().lanCode == 'ar' ? 'Tajawal' : 'Roboto',
            fontSize: 14.sp,
          ),
        ),
      ],
    );
  }
}
