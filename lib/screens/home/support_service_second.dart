import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_service_flutter/Shared/sharedPrefController.dart';
import 'package:smart_service_flutter/widgets/custom_app_bar.dart';
import 'package:smart_service_flutter/widgets/show_text_new.dart';
import 'package:smart_service_flutter/constants/colors.dart';
import 'package:smart_service_flutter/widgets/show_container_new.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:smart_service_flutter/widgets/show_text_expanded.dart';

// ignore: use_key_in_widget_constructors
class SupportServiceSecond extends StatefulWidget {
  @override
  State<SupportServiceSecond> createState() => _SupportServiceSecondState();
}

class _SupportServiceSecondState extends State<SupportServiceSecond>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int onTap = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Stack(
          children: [
            CustomAppBar(
                color: primeColor,
                width: 429.w,
                height: 307.h,
                child: SafeArea(
                  child: Padding(
                    padding:
                        EdgeInsets.only(left: 27.8.w, top: 33.h, right: 27.8.w),
                    child: Column(
                      crossAxisAlignment: SharedPrefController().lanCode == 'en'
                          ? CrossAxisAlignment.start
                          : CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            const Icon(Icons.arrow_back_ios),
                            ShowTextNew(
                                AppLocalizations.of(context)!.nameService,
                                bigText,
                                20.sp),
                          ],
                        ),
                        SizedBox(
                          height: 35.h,
                        ),
                        ShowTextExp(AppLocalizations.of(context)!.jobService,
                            mainColor, 18.sp),
                        SharedPrefController().lanCode == 'en'
                            ? SizedBox(
                                height: 7.h,
                              )
                            : SizedBox(
                                height: 0.h,
                              ),
                        ShowTextExp(AppLocalizations.of(context)!.whatChoice,
                            bigText, 14.sp),
                        const SizedBox(
                          height: 14,
                        ),
                        Container(
                          height: 29.h,
                          width: 343.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.r),
                              border: Border.all(color: mainColor)),
                          child: TabBar(
                            onTap: (index) {
                              setState(() {
                                onTap = index;
                              });
                            },
                            indicator: BoxDecoration(
                                color: mainColor,
                                borderRadius: BorderRadius.circular(5.r)),
                            controller: _tabController,
                            indicatorColor: Colors.green,
                            tabs: [
                              Tab(
                                  child: ShowTextNew(
                                AppLocalizations.of(context)!.before_order,
                                onTap == 0 ? Colors.white : mainColor,
                                15.sp,
                                fontWeight: FontWeight.normal,
                              )),
                              Tab(
                                  child: ShowTextNew(
                                      AppLocalizations.of(context)!.this_order,
                                      Colors.white,
                                      15.sp,
                                      fontWeight: FontWeight.normal)),
                            ],
                            labelColor: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                )),
            const SizedBox(
              height: 10,
            ),
            TabBarView(
              controller: _tabController,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 219.h,
                  ),
                  child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: (context, index) => Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 27.w, vertical: 14),
                            child: showContainerService(
                              widget: Column(
                                children: [
                                  ListTile(
                                    title: Column(
                                      children: [
                                        ShowTextNew(
                                            AppLocalizations.of(context)!
                                                .nameService,
                                            bigText,
                                            21.sp),
                                        const Divider(thickness: 1),
                                        Row(
                                          children: [
                                            ShowTextNew(
                                                AppLocalizations.of(context)!
                                                    .nameService,
                                                smallText,
                                                14.sp,
                                                fontWeight: FontWeight.normal),
                                            const Text(":"),
                                            ShowTextNew(
                                                AppLocalizations.of(context)!
                                                    .nameService,
                                                smallText,
                                                14.sp,
                                                fontWeight: FontWeight.normal),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 10.9,
                                        ),
                                        Row(
                                          children: [
                                            ShowTextNew(
                                                AppLocalizations.of(context)!
                                                    .nameService,
                                                smallText,
                                                14.sp,
                                                fontWeight: FontWeight.normal),
                                            const Text(":"),
                                            ShowTextNew(
                                                AppLocalizations.of(context)!
                                                    .nameService,
                                                smallText,
                                                14.sp,
                                                fontWeight: FontWeight.normal),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 10.9,
                                        ),
                                        Row(
                                          children: [
                                            ShowTextNew(
                                                AppLocalizations.of(context)!
                                                    .nameService,
                                                smallText,
                                                14.sp,
                                                fontWeight: FontWeight.normal),
                                            const Text(":"),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 10.9,
                                        ),
                                        Row(
                                          children: [
                                            const Icon(
                                              Icons.date_range,
                                              color: mainColor,
                                            ),
                                            ShowTextNew(
                                                AppLocalizations.of(context)!
                                                    .nameService,
                                                smallText,
                                                14.sp,
                                                fontWeight: FontWeight.normal),
                                            const Spacer(),
                                            const Icon(
                                              Icons.timer_sharp,
                                              color: mainColor,
                                            ),
                                            ShowTextNew(
                                                AppLocalizations.of(context)!
                                                    .nameService,
                                                smallText,
                                                14.sp,
                                                fontWeight: FontWeight.normal),
                                          ],
                                        ),
                                      ],
                                    ),
                                    contentPadding: const EdgeInsets.all(23),
                                  ),
                                ],
                              ),
                              height: 220.h,
                            ),
                          )),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 219.h,
                  ),
                  child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, index) => Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 27.w, vertical: 14.h),
                      child: showContainerService(
                        widget: Column(
                          children: [
                            ListTile(
                              title: Column(
                                children: [
                                  ShowTextNew(
                                      AppLocalizations.of(context)!.nameService,
                                      bigText,
                                      21.sp),
                                  const Divider(thickness: 1),
                                  Row(
                                    children: [
                                      ShowTextNew(
                                          AppLocalizations.of(context)!
                                              .nameService,
                                          smallText,
                                          14.sp,
                                          fontWeight: FontWeight.normal),
                                      const Text(":"),
                                      ShowTextNew(
                                          AppLocalizations.of(context)!
                                              .nameService,
                                          smallText,
                                          14.sp,
                                          fontWeight: FontWeight.normal),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10.9,
                                  ),
                                  Row(
                                    children: [
                                      ShowTextNew(
                                          AppLocalizations.of(context)!
                                              .nameService,
                                          smallText,
                                          14.sp,
                                          fontWeight: FontWeight.normal),
                                      const Text(":"),
                                      ShowTextNew(
                                          AppLocalizations.of(context)!
                                              .nameService,
                                          smallText,
                                          14.sp,
                                          fontWeight: FontWeight.normal),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10.9,
                                  ),
                                  Row(
                                    children: [
                                      ShowTextNew(
                                          AppLocalizations.of(context)!
                                              .nameService,
                                          smallText,
                                          14.sp,
                                          fontWeight: FontWeight.normal),
                                      const Text(":"),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10.9,
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.date_range,
                                        color: mainColor,
                                      ),
                                      ShowTextNew(
                                          AppLocalizations.of(context)!
                                              .nameService,
                                          smallText,
                                          14.sp,
                                          fontWeight: FontWeight.normal),
                                      const Spacer(),
                                      const Icon(
                                        Icons.timer_sharp,
                                        color: mainColor,
                                      ),
                                      ShowTextNew(
                                          AppLocalizations.of(context)!
                                              .nameService,
                                          smallText,
                                          14.sp,
                                          fontWeight: FontWeight.normal),
                                    ],
                                  ),
                                ],
                              ),
                              contentPadding: const EdgeInsets.all(23),
                            ),
                          ],
                        ),
                        height: 240.h,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
