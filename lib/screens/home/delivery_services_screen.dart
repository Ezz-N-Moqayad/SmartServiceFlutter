import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_service_flutter/Shared/sharedPrefController.dart';
import 'package:smart_service_flutter/constants/colors.dart';
import 'package:smart_service_flutter/widgets/catering_services_widget.dart';
import 'package:smart_service_flutter/widgets/custom_app_bar.dart';

// ignore: must_be_immutable
class DeliveryServiceScreen extends StatefulWidget {
  String nameService;

  DeliveryServiceScreen(this.nameService, {Key? key}) : super(key: key);

  @override
  State<DeliveryServiceScreen> createState() =>
      // ignore: no_logic_in_create_state
      _DeliveryServiceScreenState(nameService);
}

class _DeliveryServiceScreenState extends State<DeliveryServiceScreen> {
  int current = 0;

  String nameService;

  _DeliveryServiceScreenState(this.nameService);

  @override
  Widget build(BuildContext context) {
    List<String> items = [
      AppLocalizations.of(context)!.all,
      AppLocalizations.of(context)!.restaurants,
      AppLocalizations.of(context)!.cafes,
      AppLocalizations.of(context)!.supermarket,
      AppLocalizations.of(context)!.delivery_companies,
      AppLocalizations.of(context)!.bubbly,
    ];
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
                              nameService,
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
                        height: 17.h,
                      ),
                      SizedBox(
                        height: 32.h,
                        width: double.infinity,
                        child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          itemCount: items.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (ctx, index) {
                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  current = index;
                                });
                              },
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 300),
                                margin:
                                    const EdgeInsetsDirectional.only(start: 8),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  color: current == index
                                      ? mainColor
                                      : const Color(0xFFE0E0E0),
                                ),
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.only(
                                      start: 15, end: 15),
                                  child: Center(
                                    child: Text(
                                      items[index],
                                      style: TextStyle(
                                        color: current == index
                                            ? Colors.white
                                            : mainColor,
                                        fontSize: 14.sp,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        height: 45.h,
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.only(end: 28.w),
                        child: SizedBox(
                          height: 705.h,
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                CateringServicesWidget(
                                    'assets/images/Group 16013.png',
                                    AppLocalizations.of(context)!
                                        .kentucky_restaurant,
                                    true),
                                CateringServicesWidget(
                                    'assets/images/Group 15997.png',
                                    AppLocalizations.of(context)!
                                        .mc_donalds_restaurant,
                                    false),
                                CateringServicesWidget(
                                    'assets/images/Group 16013.png',
                                    AppLocalizations.of(context)!
                                        .kentucky_restaurant,
                                    true),
                                CateringServicesWidget(
                                    'assets/images/Group 15997.png',
                                    AppLocalizations.of(context)!
                                        .mc_donalds_restaurant,
                                    false),
                                CateringServicesWidget(
                                    'assets/images/Group 16013.png',
                                    AppLocalizations.of(context)!
                                        .kentucky_restaurant,
                                    true),
                                CateringServicesWidget(
                                    'assets/images/Group 15997.png',
                                    AppLocalizations.of(context)!
                                        .mc_donalds_restaurant,
                                    false),
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
          );
        },
      ),
    );
  }
}
