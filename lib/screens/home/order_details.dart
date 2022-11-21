import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_service_flutter/Shared/sharedPrefController.dart';
import 'package:smart_service_flutter/constants/colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:smart_service_flutter/widgets/custom_app_bar.dart';
import 'package:smart_service_flutter/widgets/custom_button.dart';
import 'package:smart_service_flutter/widgets/custom_container_input.dart';
import 'package:smart_service_flutter/widgets/show_text.dart';

class OrderDetailsScreen extends StatefulWidget {
  const OrderDetailsScreen({Key? key}) : super(key: key);

  @override
  State<OrderDetailsScreen> createState() => _OrderDetailsScreenState();
}

class _OrderDetailsScreenState extends State<OrderDetailsScreen> {
  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay.now();
  String date = '';
  String time = '';

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? pickedS = await showTimePicker(
      context: context,
      initialTime: selectedTime,
      builder: (ctx, child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: false),
          child: child!,
        );
      },
    );

    if (pickedS != null && pickedS != selectedTime) {
      setState(() {
        selectedTime = pickedS;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    date = DateFormat('yyyy-MM-dd – kk:mm').format(selectedDate);
    time = selectedTime.format(context);
    return Scaffold(
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            CustomAppBar(
              color: primeColor,
              width: 429.w,
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
                      const SizedBox(width: 30),
                      Text(
                        AppLocalizations.of(context)!.detailsOrder,
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
            const SizedBox(height: 40),
            ShowText(
              text: AppLocalizations.of(context)!.add_service_details,
              color: Colors.black,
              paddingHorizontal: 54.w,
            ),
            SizedBox(height: 20.h),
            SizedBox(
              width: 319.w,
              height: 120.h,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppLocalizations.of(context)!.serviceDetails,
                    style: TextStyle(
                        color: smallText,
                        fontFamily: SharedPrefController().lanCode == 'ar'
                            ? 'Tajawal'
                            : 'Roboto',
                        fontSize: 14.sp),
                  ),
                  SizedBox(height: 13.h),
                  CustomContainerInput(
                    height: 88.h,
                    text: AppLocalizations.of(context)!.enterYourServiceDetails,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            ShowText(
              text: AppLocalizations.of(context)!.select_the_appropriate_time,
              color: Colors.black,
              paddingHorizontal: 54.w,
            ),
            SizedBox(height: 20.h),
            GestureDetector(
              onTap: () {
                _selectDate(context);
              },
              child: SizedBox(
                width: 319.w,
                height: 120.h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.service_day,
                      style: TextStyle(
                          color: smallText,
                          fontFamily: SharedPrefController().lanCode == 'ar'
                              ? 'Tajawal'
                              : 'Roboto',
                          fontSize: 14.sp),
                    ),
                    SizedBox(height: 13.h),
                    CustomContainerInput(
                        enabled: false,
                        icon: const Icon(Icons.date_range),
                        text: date == ''
                            ? AppLocalizations.of(context)!.enter_today
                            : DateFormat('yyyy-MM-dd – kk:mm')
                                .format(selectedDate)),
                  ],
                ),
              ),
            ),
            SizedBox(height: 24.h),
            ShowText(
              text: AppLocalizations.of(context)!.select_the_appropriate_time,
              color: Colors.black,
              paddingHorizontal: 54.w,
            ),
            SizedBox(height: 19.h),
            GestureDetector(
              onTap: () {
                _selectTime(context);
              },
              child: SizedBox(
                width: 319.w,
                height: 120.h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.service_time,
                      style: TextStyle(
                          color: smallText,
                          fontFamily: SharedPrefController().lanCode == 'ar'
                              ? 'Tajawal'
                              : 'Roboto',
                          fontSize: 14.sp),
                    ),
                    SizedBox(height: 13.h),
                    CustomContainerInput(
                      enabled: false,
                      icon: const Icon(Icons.access_time),
                      text: time == ''
                          ? AppLocalizations.of(context)!.enter_time
                          : selectedTime.format(context),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 84.h,
              width: 428.w,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomButton(
                      colorText: mainColor,
                      name: AppLocalizations.of(context)!.back,
                      onPress: () {
                        Navigator.pop(context);
                      },
                      color: Colors.white,
                    ),
                    SizedBox(width: 8.w),
                    CustomButton(
                      name: AppLocalizations.of(context)!.next,
                      onPress: () {
                        Navigator.pushNamed(
                            context, '/order_details_review_screen');
                      },
                      color: mainColor,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
