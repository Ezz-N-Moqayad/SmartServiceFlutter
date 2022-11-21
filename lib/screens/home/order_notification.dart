import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_service_flutter/Shared/sharedPrefController.dart';
import 'package:smart_service_flutter/constants/colors.dart';
import 'package:smart_service_flutter/widgets/custom_app_bar.dart';
import 'package:smart_service_flutter/widgets/row_app_bar.dart';
import 'package:smart_service_flutter/widgets/show_container.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

// ignore: camel_case_types
class orderNotificationScreen extends StatelessWidget {
  const orderNotificationScreen({Key? key}) : super(key: key);

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
              child: RowAppBar(
                title: AppLocalizations.of(context)!.order_notices,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding:
                  EdgeInsetsDirectional.only(start: 15.w, end: 15.w, top: 5.h),
              child: SizedBox(
                height: 670.h,
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
                                        '${AppLocalizations.of(context)!.order_number} 1',
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
                                      top: 31.h, end: 20.w),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.green,
                                          side: BorderSide(
                                            width: 1.w,
                                            color: Colors.green,
                                          ),
                                        ),
                                        child: Text(
                                          AppLocalizations.of(context)!
                                              .acceptance,
                                          style: TextStyle(
                                            fontSize: 10.sp,
                                            color: Colors.white,
                                            fontFamily: 'Tajawal',
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 8.3.w,
                                      ),
                                      ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.red,
                                          side: BorderSide(
                                            width: 1.w,
                                            color: Colors.red,
                                          ),
                                        ),
                                        child: Text(
                                          AppLocalizations.of(context)!.reject,
                                          style: TextStyle(
                                            fontSize: 10.sp,
                                            color: Colors.white,
                                            fontFamily: 'Tajawal',
                                          ),
                                        ),
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
                                '${AppLocalizations.of(context)!.customer_name} أحمد محمد علي',
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
                          ],
                        ),
                        height: 152.h,
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
                                        '${AppLocalizations.of(context)!.order_number} 1',
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
                                      top: 31.h, end: 20.w),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.green,
                                          side: BorderSide(
                                            width: 1.w,
                                            color: Colors.green,
                                          ),
                                        ),
                                        child: Text(
                                          AppLocalizations.of(context)!
                                              .acceptance,
                                          style: TextStyle(
                                            fontSize: 10.sp,
                                            color: Colors.white,
                                            fontFamily: 'Tajawal',
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 8.3.w,
                                      ),
                                      ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.red,
                                          side: BorderSide(
                                            width: 1.w,
                                            color: Colors.red,
                                          ),
                                        ),
                                        child: Text(
                                          AppLocalizations.of(context)!.reject,
                                          style: TextStyle(
                                            fontSize: 10.sp,
                                            color: Colors.white,
                                            fontFamily: 'Tajawal',
                                          ),
                                        ),
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
                                '${AppLocalizations.of(context)!.customer_name} أحمد محمد علي',
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
                          ],
                        ),
                        height: 152.h,
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
                                        '${AppLocalizations.of(context)!.order_number} 1',
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
                                      top: 31.h, end: 20.w),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.green,
                                          side: BorderSide(
                                            width: 1.w,
                                            color: Colors.green,
                                          ),
                                        ),
                                        child: Text(
                                          AppLocalizations.of(context)!
                                              .acceptance,
                                          style: TextStyle(
                                            fontSize: 10.sp,
                                            color: Colors.white,
                                            fontFamily: 'Tajawal',
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 8.3.w,
                                      ),
                                      ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.red,
                                          side: BorderSide(
                                            width: 1.w,
                                            color: Colors.red,
                                          ),
                                        ),
                                        child: Text(
                                          AppLocalizations.of(context)!.reject,
                                          style: TextStyle(
                                            fontSize: 10.sp,
                                            color: Colors.white,
                                            fontFamily: 'Tajawal',
                                          ),
                                        ),
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
                                '${AppLocalizations.of(context)!.customer_name} أحمد محمد علي',
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
                          ],
                        ),
                        height: 152.h,
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
                                        '${AppLocalizations.of(context)!.order_number} 1',
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
                                      top: 31.h, end: 20.w),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.green,
                                          side: BorderSide(
                                            width: 1.w,
                                            color: Colors.green,
                                          ),
                                        ),
                                        child: Text(
                                          AppLocalizations.of(context)!
                                              .acceptance,
                                          style: TextStyle(
                                            fontSize: 10.sp,
                                            color: Colors.white,
                                            fontFamily: 'Tajawal',
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 8.3.w,
                                      ),
                                      ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.red,
                                          side: BorderSide(
                                            width: 1.w,
                                            color: Colors.red,
                                          ),
                                        ),
                                        child: Text(
                                          AppLocalizations.of(context)!.reject,
                                          style: TextStyle(
                                            fontSize: 10.sp,
                                            color: Colors.white,
                                            fontFamily: 'Tajawal',
                                          ),
                                        ),
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
                                '${AppLocalizations.of(context)!.customer_name} أحمد محمد علي',
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
                          ],
                        ),
                        height: 152.h,
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
                                        '${AppLocalizations.of(context)!.order_number} 1',
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
                                      top: 31.h, end: 20.w),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.green,
                                          side: BorderSide(
                                            width: 1.w,
                                            color: Colors.green,
                                          ),
                                        ),
                                        child: Text(
                                          AppLocalizations.of(context)!
                                              .acceptance,
                                          style: TextStyle(
                                            fontSize: 10.sp,
                                            color: Colors.white,
                                            fontFamily: 'Tajawal',
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 8.3.w,
                                      ),
                                      ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.red,
                                          side: BorderSide(
                                            width: 1.w,
                                            color: Colors.red,
                                          ),
                                        ),
                                        child: Text(
                                          AppLocalizations.of(context)!.reject,
                                          style: TextStyle(
                                            fontSize: 10.sp,
                                            color: Colors.white,
                                            fontFamily: 'Tajawal',
                                          ),
                                        ),
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
                                '${AppLocalizations.of(context)!.customer_name} أحمد محمد علي',
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
                          ],
                        ),
                        height: 152.h,
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
                                        '${AppLocalizations.of(context)!.order_number} 1',
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
                                      top: 31.h, end: 20.w),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.green,
                                          side: BorderSide(
                                            width: 1.w,
                                            color: Colors.green,
                                          ),
                                        ),
                                        child: Text(
                                          AppLocalizations.of(context)!
                                              .acceptance,
                                          style: TextStyle(
                                            fontSize: 10.sp,
                                            color: Colors.white,
                                            fontFamily: 'Tajawal',
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 8.3.w,
                                      ),
                                      ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.red,
                                          side: BorderSide(
                                            width: 1.w,
                                            color: Colors.red,
                                          ),
                                        ),
                                        child: Text(
                                          AppLocalizations.of(context)!.reject,
                                          style: TextStyle(
                                            fontSize: 10.sp,
                                            color: Colors.white,
                                            fontFamily: 'Tajawal',
                                          ),
                                        ),
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
                                '${AppLocalizations.of(context)!.customer_name} أحمد محمد علي',
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
                          ],
                        ),
                        height: 152.h,
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
                                        '${AppLocalizations.of(context)!.order_number} 1',
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
                                      top: 31.h, end: 20.w),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.green,
                                          side: BorderSide(
                                            width: 1.w,
                                            color: Colors.green,
                                          ),
                                        ),
                                        child: Text(
                                          AppLocalizations.of(context)!
                                              .acceptance,
                                          style: TextStyle(
                                            fontSize: 10.sp,
                                            color: Colors.white,
                                            fontFamily: 'Tajawal',
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 8.3.w,
                                      ),
                                      ElevatedButton(
                                        onPressed: () {},
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.red,
                                          side: BorderSide(
                                            width: 1.w,
                                            color: Colors.red,
                                          ),
                                        ),
                                        child: Text(
                                          AppLocalizations.of(context)!.reject,
                                          style: TextStyle(
                                            fontSize: 10.sp,
                                            color: Colors.white,
                                            fontFamily: 'Tajawal',
                                          ),
                                        ),
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
                                '${AppLocalizations.of(context)!.customer_name} أحمد محمد علي',
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
                          ],
                        ),
                        height: 152.h,
                        width: 372.w,
                      ),
                      SizedBox(
                        height: 14.h,
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
