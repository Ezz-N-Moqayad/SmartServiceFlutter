import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_service_flutter/Shared/sharedPrefController.dart';
import 'package:smart_service_flutter/constants/colors.dart';
import 'package:smart_service_flutter/widgets/custom_app_bar.dart';
import 'package:smart_service_flutter/widgets/indicator_services_widget.dart';
import 'package:smart_service_flutter/widgets/counter_widget.dart';

// ignore: must_be_immutable
class ServiceScreen extends StatefulWidget {
  String nameService;

  ServiceScreen(this.nameService, {Key? key}) : super(key: key);

  @override
  // ignore: no_logic_in_create_state
  State<ServiceScreen> createState() => _ServiceScreenState(nameService);
}

class _ServiceScreenState extends State<ServiceScreen> {
  int current = 0;
  String nameService;
  bool isSelected = false;
  bool isTesting = false;
  int? indexR;
  int servicePrice = 200;

  _ServiceScreenState(this.nameService);

  @override
  Widget build(BuildContext context) {
    List<String> items = [
      AppLocalizations.of(context)!.all,
      AppLocalizations.of(context)!.electricity,
      AppLocalizations.of(context)!.pipes,
      AppLocalizations.of(context)!.conditioners,
      AppLocalizations.of(context)!.maintenance,
      AppLocalizations.of(context)!.paint,
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
                  padding: EdgeInsetsDirectional.only(top: 76.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.only(start: 28.w, end: 10.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, '/bottom_navigation');
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
                      Padding(
                        padding: EdgeInsetsDirectional.only(start: 28.w),
                        child: SizedBox(
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
                                  margin: const EdgeInsetsDirectional.only(
                                      start: 8),
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
                      ),
                      SizedBox(
                        height: 45.h,
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.only(start: 28.w, end: 29.w),
                        child: SizedBox(
                          height: 620.h,
                          child: MediaQuery.removePadding(
                            removeTop: true,
                            removeBottom: true,
                            context: context,
                            child: ListView.builder(
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding:
                                      EdgeInsetsDirectional.only(bottom: 14.h),
                                  child: Container(
                                    width: 372.w,
                                    height: 207.h,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(28),
                                      border: Border.all(
                                        color: const Color(0xFFE2E2E2),
                                        width: 0.5,
                                      ),
                                    ),
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          height: 72.h,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        start: 16.w, top: 16.h),
                                                child: SizedBox(
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        AppLocalizations.of(
                                                                context)!
                                                            .electricity,
                                                        style: TextStyle(
                                                          color: bigText,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 21.sp,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              GestureDetector(
                                                onTap: () {
                                                  indexR = index;
                                                  isSelected = false;
                                                  isTesting = true;
                                                  setState(() {});
                                                },
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .only(end: 22.w),
                                                  child:
                                                      IndicatorServicesWidget(
                                                    selected: indexR == index
                                                        ? !isSelected
                                                        : isSelected,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const Divider(
                                          color: Color(0xFFE2E2E2),
                                        ),
                                        SizedBox(
                                          height: 116.h,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        start: 16.w,
                                                        top: 14.h,
                                                        bottom: 15.h),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      AppLocalizations.of(
                                                              context)!
                                                          .troubleshooting_drums,
                                                      style: TextStyle(
                                                        color: const Color(
                                                            0xff383838),
                                                        fontSize: 16.sp,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 5.h,
                                                    ),
                                                    Text(
                                                      '$servicePrice ${AppLocalizations.of(context)!.shekel}',
                                                      style: TextStyle(
                                                        color: Colors.black,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 13.sp,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsetsDirectional.only(
                                                        end: 20.w,
                                                        bottom: 18.h),
                                                child: const CounterWidget(),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                              itemCount: 6,
                            ),
                          ),
                        ),
                      ),
                      AnimatedOpacity(
                        opacity: isTesting ? 1 : 0,
                        duration: const Duration(milliseconds: 250),
                        child: Container(
                          width: 428.w,
                          height: 84,
                          color: Colors.white,
                          child: Align(
                            alignment: SharedPrefController().lanCode == 'en'
                                ? Alignment.centerRight
                                : Alignment.centerLeft,
                            child: Padding(
                              padding: SharedPrefController().lanCode == 'en'
                                  ? const EdgeInsets.only(right: 30)
                                  : const EdgeInsets.only(left: 30),
                              child: Container(
                                clipBehavior: Clip.antiAlias,
                                height: 48,
                                width: 128,
                                decoration: const BoxDecoration(),
                                child: ElevatedButton(
                                  onPressed: () {
                                    if (isTesting == true) {
                                      Navigator.pushNamed(
                                          context, '/order_details_screen');
                                    }
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
                            ),
                          ),
                        ),
                      )
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
