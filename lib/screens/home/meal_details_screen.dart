import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_service_flutter/Shared/sharedPrefController.dart';
import 'package:smart_service_flutter/constants/colors.dart';

// ignore: must_be_immutable
class MealDetailsScreen extends StatefulWidget {
  String nameMeal, detailsMeal;
  double priceMeal, ratingMeal;

  // ignore: use_key_in_widget_constructors
  MealDetailsScreen(
      this.nameMeal, this.detailsMeal, this.priceMeal, this.ratingMeal);

  @override
  State<MealDetailsScreen> createState() =>
      // ignore: no_logic_in_create_state
      _MealDetailsScreenState(nameMeal, detailsMeal, priceMeal, ratingMeal);
}

class _MealDetailsScreenState extends State<MealDetailsScreen> {
  String nameMeal, detailsMeal;
  double priceMeal, ratingMeal;
  int counter = 1;
  bool deliveryCounter = true;

  _MealDetailsScreenState(
      this.nameMeal, this.detailsMeal, this.priceMeal, this.ratingMeal);

  @override
  Widget build(BuildContext context) => Scaffold(
        body: Builder(
          builder: (context) {
            return SingleChildScrollView(
              physics: const NeverScrollableScrollPhysics(),
              child: Stack(
                children: [
                  Image.asset('assets/images/Group 16015.png'),
                  Padding(
                    padding: EdgeInsetsDirectional.only(top: 81.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 150.h),
                        Padding(
                          padding: EdgeInsetsDirectional.only(start: 28.w),
                          child: Container(
                            width: 373.w,
                            height: 550.h,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(28)),
                            ),
                            child: Padding(
                              padding: EdgeInsetsDirectional.only(
                                  top: 29.h, start: 21.w, end: 21.w),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            nameMeal,
                                            style: TextStyle(
                                              color: bigText,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16.sp,
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              const Icon(Icons.star,
                                                  color: primeColor),
                                              Text(
                                                "$ratingMeal",
                                                style: TextStyle(
                                                  color: primeColor,
                                                  fontSize: 11.sp,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "$priceMeal",
                                            style: TextStyle(
                                              color: bigText,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 31.sp,
                                            ),
                                          ),
                                          Text(
                                            AppLocalizations.of(context)!
                                                .shekel,
                                            style: TextStyle(
                                              color: bigText,
                                              fontSize: 14.sp,
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                  SizedBox(height: 30.h),
                                  Text(
                                    AppLocalizations.of(context)!
                                        .the_description,
                                    style: TextStyle(
                                      color: bigText,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14.sp,
                                    ),
                                  ),
                                  SizedBox(height: 11.h),
                                  Text(
                                    "$nameMeal ${AppLocalizations.of(context)!.contains} $detailsMeal",
                                    style: TextStyle(
                                      color: smallText,
                                      fontSize: 12.sp,
                                    ),
                                  ),
                                  SizedBox(height: 11.h),
                                  const Divider(
                                    color: Color(0xFFE2E2E2),
                                  ),
                                  SizedBox(height: 10.h),
                                  SizedBox(
                                    height: 340.h,
                                    child: MediaQuery.removePadding(
                                      removeTop: true,
                                      removeBottom: true,
                                      context: context,
                                      child: SingleChildScrollView(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              AppLocalizations.of(context)!
                                                  .customize_order,
                                              style: TextStyle(
                                                color: bigText,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14.sp,
                                              ),
                                            ),
                                            SizedBox(height: 18.h),
                                            Container(
                                              width: 320,
                                              height: 44,
                                              decoration: BoxDecoration(
                                                color: const Color(0xFFF5F6FA),
                                                borderRadius:
                                                    BorderRadius.circular(4),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .only(
                                                                start: 12.w,
                                                                top: 12.h,
                                                                bottom: 13.h),
                                                    child: Text(
                                                      AppLocalizations.of(
                                                              context)!
                                                          .normal_hot,
                                                      style: TextStyle(
                                                        color: smallText,
                                                        fontSize: 14.sp,
                                                      ),
                                                    ),
                                                  ),
                                                  IconButton(
                                                      onPressed: () {},
                                                      color: Colors.black,
                                                      icon: const Icon(Icons
                                                          .keyboard_arrow_down_sharp)),
                                                ],
                                              ),
                                            ),
                                            SizedBox(height: 14.h),
                                            Container(
                                              width: 320,
                                              height: 44,
                                              decoration: BoxDecoration(
                                                color: const Color(0xFFF5F6FA),
                                                borderRadius:
                                                    BorderRadius.circular(4),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .only(
                                                                start: 12.w,
                                                                top: 12.h,
                                                                bottom: 13.h),
                                                    child: Text(
                                                      AppLocalizations.of(
                                                              context)!
                                                          .choose_a_side_dish,
                                                      style: TextStyle(
                                                        color: smallText,
                                                        fontSize: 14.sp,
                                                      ),
                                                    ),
                                                  ),
                                                  IconButton(
                                                      onPressed: () {},
                                                      color: Colors.black,
                                                      icon: const Icon(Icons
                                                          .keyboard_arrow_down_sharp)),
                                                ],
                                              ),
                                            ),
                                            SizedBox(height: 14.h),
                                            Container(
                                              width: 320,
                                              height: 44,
                                              decoration: BoxDecoration(
                                                color: const Color(0xFFF5F6FA),
                                                borderRadius:
                                                    BorderRadius.circular(4),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .only(
                                                                start: 12.w,
                                                                top: 12.h,
                                                                bottom: 13.h),
                                                    child: Text(
                                                      AppLocalizations.of(
                                                              context)!
                                                          .add_a_drink,
                                                      style: TextStyle(
                                                        color: smallText,
                                                        fontSize: 14.sp,
                                                      ),
                                                    ),
                                                  ),
                                                  IconButton(
                                                      onPressed: () {},
                                                      color: Colors.black,
                                                      icon: const Icon(Icons
                                                          .keyboard_arrow_down_sharp)),
                                                ],
                                              ),
                                            ),
                                            SizedBox(height: 14.h),
                                            Container(
                                              width: 320,
                                              height: 44,
                                              decoration: BoxDecoration(
                                                color: const Color(0xFFF5F6FA),
                                                borderRadius:
                                                    BorderRadius.circular(4),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .only(
                                                                start: 12.w,
                                                                top: 12.h,
                                                                bottom: 13.h),
                                                    child: Text(
                                                      AppLocalizations.of(
                                                              context)!
                                                          .other_additions,
                                                      style: TextStyle(
                                                        color: smallText,
                                                        fontSize: 14.sp,
                                                      ),
                                                    ),
                                                  ),
                                                  IconButton(
                                                      onPressed: () {},
                                                      color: Colors.black,
                                                      icon: const Icon(Icons
                                                          .keyboard_arrow_down_sharp)),
                                                ],
                                              ),
                                            ),
                                            SizedBox(height: 24.h),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  AppLocalizations.of(context)!
                                                      .number_of_meals,
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 14.sp,
                                                  ),
                                                ),
                                                Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    SizedBox(
                                                      width: 86.w,
                                                      height: 27.h,
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          InkWell(
                                                            onTap: () {
                                                              if (counter > 1) {
                                                                counter--;
                                                                setState(() {});
                                                              }
                                                            },
                                                            child: Container(
                                                              width: 22.w,
                                                              height: 22.h,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Colors
                                                                    .white,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            11),
                                                                border:
                                                                    Border.all(
                                                                  color:
                                                                      mainColor,
                                                                  width: 1,
                                                                ),
                                                              ),
                                                              child: Padding(
                                                                padding: EdgeInsetsDirectional
                                                                    .only(
                                                                        start:
                                                                            4.w,
                                                                        end: 4
                                                                            .w),
                                                                child: Divider(
                                                                  thickness:
                                                                      2.h,
                                                                  color:
                                                                      mainColor,
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Text(
                                                            '$counter',
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              fontSize: 20.sp,
                                                            ),
                                                          ),
                                                          InkWell(
                                                            onTap: () {
                                                              counter++;
                                                              setState(() {});
                                                            },
                                                            child: Container(
                                                              width: 22.w,
                                                              height: 22.h,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: Colors
                                                                    .white,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            11),
                                                                border:
                                                                    Border.all(
                                                                  color:
                                                                      mainColor,
                                                                  width: 1,
                                                                ),
                                                              ),
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsetsDirectional
                                                                            .all(
                                                                        4.0),
                                                                child: Stack(
                                                                  children: [
                                                                    Divider(
                                                                      thickness:
                                                                          2.h,
                                                                      color:
                                                                          mainColor,
                                                                    ),
                                                                    VerticalDivider(
                                                                      thickness:
                                                                          2.h,
                                                                      color:
                                                                          mainColor,
                                                                    )
                                                                  ],
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 20.h),
                                            Row(
                                              children: [
                                                Container(
                                                  height: 40.h,
                                                  width: 160.w,
                                                  decoration: BoxDecoration(
                                                    color:
                                                        deliveryCounter == true
                                                            ? mainColor
                                                            : const Color(
                                                                0xFFF2F2F2),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12),
                                                  ),
                                                  child: Center(
                                                    // ignore: deprecated_member_use
                                                    child: FlatButton(
                                                      onPressed: () {
                                                        setState(() {
                                                          deliveryCounter =
                                                              true;
                                                        });
                                                      },
                                                      child: Text(
                                                        AppLocalizations.of(
                                                                context)!
                                                            .use_the_delivery_service,
                                                        style: TextStyle(
                                                          color:
                                                              deliveryCounter ==
                                                                      true
                                                                  ? Colors.white
                                                                  : mainColor,
                                                          fontSize: 10,
                                                          fontFamily:
                                                              SharedPrefController()
                                                                          .lanCode ==
                                                                      'ar'
                                                                  ? 'Tajawal'
                                                                  : 'Roboto',
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                SizedBox(width: 10.w),
                                                Container(
                                                  height: 40.h,
                                                  width: 160.w,
                                                  decoration: BoxDecoration(
                                                    color:
                                                        deliveryCounter == false
                                                            ? mainColor
                                                            : const Color(
                                                                0xFFF2F2F2),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12),
                                                  ),
                                                  child: Center(
                                                    // ignore: deprecated_member_use
                                                    child: FlatButton(
                                                      onPressed: () {
                                                        deliveryCounter = false;
                                                        setState(() {});
                                                      },
                                                      child: Text(
                                                        AppLocalizations.of(
                                                                context)!
                                                            .use_the_delivery_service,
                                                        style: TextStyle(
                                                          color:
                                                              deliveryCounter ==
                                                                      false
                                                                  ? Colors.white
                                                                  : mainColor,
                                                          fontSize: 10,
                                                          fontFamily:
                                                              SharedPrefController()
                                                                          .lanCode ==
                                                                      'ar'
                                                                  ? 'Tajawal'
                                                                  : 'Roboto',
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 23.h),
                                            Text(
                                              AppLocalizations.of(context)!
                                                  .select_the_region,
                                              style: TextStyle(
                                                color: bigText,
                                                fontSize: 14.sp,
                                              ),
                                            ),
                                            SizedBox(height: 13.h),
                                            Container(
                                              width: 320,
                                              height: 44,
                                              decoration: BoxDecoration(
                                                color: const Color(0xFFF5F6FA),
                                                borderRadius:
                                                    BorderRadius.circular(4),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .only(
                                                                start: 12.w,
                                                                top: 12.h,
                                                                bottom: 13.h),
                                                    child: Text(
                                                      AppLocalizations.of(
                                                              context)!
                                                          .ram_allah,
                                                      style: TextStyle(
                                                        color: smallText,
                                                        fontSize: 14.sp,
                                                      ),
                                                    ),
                                                  ),
                                                  IconButton(
                                                      onPressed: () {},
                                                      color: Colors.black,
                                                      icon: const Icon(Icons
                                                          .keyboard_arrow_down_sharp)),
                                                ],
                                              ),
                                            ),
                                            SizedBox(height: 26.h),
                                            Row(
                                              children: [
                                                Text(
                                                  AppLocalizations.of(context)!
                                                      .delivery_price,
                                                  style: TextStyle(
                                                    color: bigText,
                                                    fontSize: 14.sp,
                                                  ),
                                                ),
                                                SizedBox(width: 24.w),
                                                Container(
                                                  height: 26.h,
                                                  width: 61.w,
                                                  decoration: BoxDecoration(
                                                      color: primeColor,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              4)),
                                                  child: Center(
                                                    child: Text(
                                                      '14.00₪',
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 12,
                                                        fontFamily:
                                                            SharedPrefController()
                                                                        .lanCode ==
                                                                    'ar'
                                                                ? 'Tajawal'
                                                                : 'Roboto',
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(height: 25.h),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 60.h),
                        Container(
                          width: 428.w,
                          height: 84,
                          color: Colors.white,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Container(
                                clipBehavior: Clip.antiAlias,
                                height: 48,
                                width: 128,
                                decoration: const BoxDecoration(),
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  // ignore: sort_child_properties_last
                                  child: Text(
                                    AppLocalizations.of(context)!.back,
                                    style: TextStyle(
                                      color: mainColor,
                                      fontSize: 14.sp,
                                      fontFamily: 'Tajawal',
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    primary: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(24),
                                    ),
                                    side: BorderSide(
                                        width: 2.w, color: mainColor),
                                  ),
                                ),
                              ),
                              SizedBox(width: 8.w),
                              Container(
                                clipBehavior: Clip.antiAlias,
                                height: 48,
                                width: 128,
                                decoration: const BoxDecoration(),
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, '/order_details_screen');
                                  },
                                  // ignore: sort_child_properties_last
                                  child: Text(
                                    AppLocalizations.of(context)!.next,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 14.sp,
                                      fontFamily: 'Tajawal',
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    primary: mainColor,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(24),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 30.w),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      );
}
