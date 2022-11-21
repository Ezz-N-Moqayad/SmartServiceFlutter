import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_service_flutter/constants/colors.dart';
import 'package:smart_service_flutter/screens/home/choose%20_meal_screen.dart';

// ignore: must_be_immutable
class CateringServicesWidget extends StatelessWidget {
  String urlRestaurant, nameRestaurant;
  bool restaurantStatus;

  // ignore: use_key_in_widget_constructors
  CateringServicesWidget(
      this.urlRestaurant, this.nameRestaurant, this.restaurantStatus);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsetsDirectional.only(bottom: 14.h),
          child: Container(
            width: 371.w,
            height: 131.h,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(28),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 60.w,
                      height: 60.h,
                      child: Padding(
                        padding: EdgeInsetsDirectional.only(start: 12.w),
                        child: Image.asset(urlRestaurant),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.only(start: 15.w, end: 22.w),
                      child: SizedBox(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.only(top: 20.h),
                              child: Text(
                                nameRestaurant,
                                style: TextStyle(
                                  color: bigText,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.sp,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.only(bottom: 10.h),
                              child: Text(
                                AppLocalizations.of(context)!
                                    .fast_food_restaurant,
                                style: TextStyle(
                                  color: smallText,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14.sp,
                                ),
                              ),
                            ),
                            Container(
                              width: 81.w,
                              height: 25.h,
                              decoration: BoxDecoration(
                                color: restaurantStatus == true
                                    ? const Color(0xff00BF26)
                                    : const Color(0xffBF0000),
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Center(
                                child: Text(
                                  restaurantStatus == true
                                      ? AppLocalizations.of(context)!.now_open
                                      : AppLocalizations.of(context)!
                                          .closed_now,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12.sp,
                                    fontFamily: 'Tajawal',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          builder: (context) =>
                              ChooseMealScreen(nameRestaurant)),
                    );
                  },
                  color: const Color(0xffCBC9D9),
                  icon: const Icon(Icons.arrow_back_ios_new),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 14.h,
        ),
      ],
    );
  }
}
