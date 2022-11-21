import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_service_flutter/constants/colors.dart';
import 'package:smart_service_flutter/screens/home/meal_details_screen.dart';

// ignore: must_be_immutable
class RestaurantMealsWidget extends StatelessWidget {
  String urlMeal, nameMeal, detailsMeal;
  double priceMeal, ratingMeal;

  // ignore: use_key_in_widget_constructors
  RestaurantMealsWidget(this.urlMeal, this.nameMeal, this.detailsMeal,
      this.priceMeal, this.ratingMeal);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsetsDirectional.only(bottom: 14.h),
          child: Container(
            width: 373.w,
            height: 122.h,
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
                        child: Image.asset(urlMeal),
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
                              padding: EdgeInsetsDirectional.only(top: 18.h),
                              child: Text(
                                nameMeal,
                                style: TextStyle(
                                  color: bigText,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.sp,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.only(bottom: 7.h),
                              child: Text(
                                detailsMeal,
                                style: TextStyle(
                                  color: smallText,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14.sp,
                                ),
                              ),
                            ),
                            Text(
                              "$priceMeal${AppLocalizations.of(context)!.shekel}",
                              style: TextStyle(
                                color: bigText,
                                fontSize: 14.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsetsDirectional.only(
                      top: 24.h, end: 22.w, bottom: 16.h),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.star, color: primeColor),
                          Text(
                            "$ratingMeal",
                            style: TextStyle(
                              color: primeColor,
                              fontSize: 11.sp,
                            ),
                          ),
                        ],
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => MealDetailsScreen(
                                  nameMeal, detailsMeal, priceMeal, ratingMeal),
                            ),
                          );
                        },
                        child: Container(
                          width: 30.w,
                          height: 30.h,
                          decoration: BoxDecoration(
                            color: mainColor,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: const Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
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
