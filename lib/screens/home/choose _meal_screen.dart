import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_service_flutter/Shared/sharedPrefController.dart';
import 'package:smart_service_flutter/constants/colors.dart';
import 'package:smart_service_flutter/widgets/custom_app_bar.dart';
import 'package:smart_service_flutter/widgets/restaurant_meals_widget.dart';

// ignore: must_be_immutable
class ChooseMealScreen extends StatefulWidget {
  String nameRestaurant;

  // ignore: prefer_const_constructors_in_immutables
  ChooseMealScreen(this.nameRestaurant, {Key? key}) : super(key: key);

  @override
  State<ChooseMealScreen> createState() =>
      // ignore: no_logic_in_create_state
      _ChooseMealScreenState(nameRestaurant);
}

class _ChooseMealScreenState extends State<ChooseMealScreen> {
  int current = 0;
  String nameRestaurant;

  _ChooseMealScreenState(this.nameRestaurant);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (context) {
          return SingleChildScrollView(
            physics: const NeverScrollableScrollPhysics(),
            child: Stack(
              children: [
                CustomAppBar(
                    color: primeColor,
                    width: double.infinity.w,
                    height: 307.h,
                    child: const Text('')),
                Padding(
                  padding: EdgeInsetsDirectional.only(start: 28.w, top: 76.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.only(end: 10.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                color: Colors.black,
                                icon: const Icon(Icons.arrow_back_ios)),
                            Text(
                              nameRestaurant,
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                fontFamily:
                                    SharedPrefController().lanCode == 'ar'
                                        ? 'Tajawal'
                                        : 'Roboto',
                              ),
                            ),
                            IconButton(
                                onPressed: () {},
                                color: const Color(0xff000000),
                                icon: const Icon(Icons.search)),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 35.h,
                      ),
                      Text(
                        AppLocalizations.of(context)!.here_you_will_find,
                        style: TextStyle(
                          color: mainColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          fontFamily: SharedPrefController().lanCode == 'ar'
                              ? 'Tajawal'
                              : 'Roboto',
                        ),
                      ),
                      Text(
                        AppLocalizations.of(context)!.you_can_choose_what,
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: SharedPrefController().lanCode == 'ar'
                              ? 'Tajawal'
                              : 'Roboto',
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(
                        height: 37.h,
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.only(end: 29.w),
                        child: SizedBox(
                          height: 700.h,
                          child: MediaQuery.removePadding(
                            removeTop: true,
                            // removeBottom: true,
                            context: context,
                            child: ListView.builder(
                              itemBuilder: (context, index) {
                                return RestaurantMealsWidget(
                                  'assets/images/Group 16012.png',
                                  AppLocalizations.of(context)!
                                      .super_mega_deal_mix,
                                  AppLocalizations.of(context)!
                                      .pieces_of_chicken_fries,
                                  54.99,
                                  4.9,
                                );
                              },
                              itemCount: 6,
                            ),
                          ),
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
}
