import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_service_flutter/widgets/custom_app_bar.dart';
import 'package:smart_service_flutter/widgets/custom_button.dart';
import 'package:smart_service_flutter/widgets/indicator.dart';
import 'package:smart_service_flutter/widgets/show_container_new.dart';
import 'package:smart_service_flutter/widgets/show_text_expanded.dart';
import 'package:smart_service_flutter/Shared/sharedPrefController.dart';
import 'package:smart_service_flutter/constants/colors.dart';
import 'package:smart_service_flutter/widgets/show_text_new.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

// ignore: use_key_in_widget_constructors
class SupportServiceScreen extends StatefulWidget {
  @override
  State<SupportServiceScreen> createState() => _SupportServiceScreenState();
}

class _SupportServiceScreenState extends State<SupportServiceScreen> {
  bool isSelected = false;
  late ScrollController _scrollController = ScrollController();
  int? index;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomAppBar(
            color: primeColor,
            width: 429,
            height: 307,
            child: SafeArea(
              child: Padding(
                padding: SharedPrefController().lanCode == 'en'
                    ? const EdgeInsets.only(left: 27.8, top: 33)
                    : const EdgeInsets.only(right: 27.8, top: 33),
                child: Column(
                  crossAxisAlignment: SharedPrefController().lanCode == 'en'
                      ? CrossAxisAlignment.start
                      : CrossAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.arrow_back_ios),
                        ShowTextNew(
                          AppLocalizations.of(context)!.serviceProvider,
                          bigText,
                          20.sp,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 35.h,
                    ),
                    ShowTextExp(AppLocalizations.of(context)!.choiceService,
                        mainColor, 18.sp),
                    SizedBox(
                      height: 5.h,
                    ),
                    ShowTextNew(AppLocalizations.of(context)!.whatChoice,
                        bigText, 14.sp),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          MediaQuery.removePadding(
            removeTop: true,
            context: context,
            child: Padding(
              padding: EdgeInsets.only(
                top: 219.h,
              ),
              child: ListView.builder(
                controller: _scrollController,
                itemCount: 10,
                itemBuilder: (context, index) => Padding(
                  padding: EdgeInsets.symmetric(horizontal: 27.w, vertical: 14),
                  child: showContainerService(
                    widget: Padding(
                      padding: SharedPrefController().lanCode == 'en'
                          ? const EdgeInsets.only(top: 12)
                          : const EdgeInsets.only(top: 0),
                      child: Column(
                        children: [
                          ListTile(
                            leading: Image.asset("assets/images/Ellipse 3.png"),
                            title: Column(
                              children: [
                                ShowTextNew(
                                    AppLocalizations.of(context)!.nameService,
                                    bigText,
                                    16.sp),
                                SharedPrefController().lanCode == 'en'
                                    ? const SizedBox(height: 3)
                                    : const SizedBox(height: 0)
                              ],
                            ),
                            subtitle: ShowTextExp(
                                AppLocalizations.of(context)!.jobService,
                                smallText,
                                14.sp),
                            trailing: Indicator(
                                selected: this.index == index
                                    ? !isSelected
                                    : isSelected),
                            onTap: () {
                              this.index = index;
                              isSelected = false;
                              setState(() {});
                            },
                          ),
                        ],
                      ),
                    ),
                    height: 120.h,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 841.h,
            child: Container(
              width: 428,
              height: 84,
              color: backgroundColor,
              child: SizedBox(
                height: 44,
                width: 80,
                child: Align(
                  alignment: SharedPrefController().lanCode == 'en'
                      ? Alignment.centerRight
                      : Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 30, left: 30),
                    child: Container(
                      clipBehavior: Clip.antiAlias,
                      height: 48,
                      width: 128,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)),
                      child: CustomButton(
                          color: mainColor,
                          name: AppLocalizations.of(context)!.send,
                          onPress: () {}),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
