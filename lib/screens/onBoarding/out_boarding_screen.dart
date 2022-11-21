import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_service_flutter/Shared/sharedPrefController.dart';
import 'package:smart_service_flutter/constants/colors.dart';
import 'package:smart_service_flutter/widgets/indicator.dart';
import 'package:smart_service_flutter/widgets/page_view_widget.dart';

class OutBoardingScreen extends StatefulWidget {
  const OutBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OutBoardingScreen> createState() => _OutBoardingScreenState();
}

class _OutBoardingScreenState extends State<OutBoardingScreen> {
  int pageNumber = 0;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Image.asset('assets/images/backgroundScreenLogin_top.png'),
            SafeArea(
                child: Container(
              margin: EdgeInsets.only(right: 270.w, top: 120.h),
            )),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 22.w),
                  child: TextButton(
                    onPressed: () {
                      pageNumber != 2
                          ? _pageController.animateToPage(2,
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeIn)
                          : Navigator.pushReplacementNamed(
                              context, '/login_screen');
                    },
                    child: Text(
                      pageNumber == 2
                          ? AppLocalizations.of(context)!.enter
                          : AppLocalizations.of(context)!.skip,
                      style: TextStyle(
                        color: mainColor,
                        fontFamily: SharedPrefController().lanCode == 'ar'
                            ? 'Tajawal'
                            : 'Roboto',
                        fontWeight: FontWeight.bold,
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: _pageController,
                onPageChanged: (int pageNumber) {
                  setState(() {});
                  this.pageNumber = pageNumber;
                },
                children: [
                  PageViewChild(
                    img: 'assets/images/out1.png',
                    text: AppLocalizations.of(context)!.title_view1,
                    secondText: AppLocalizations.of(context)!.page_view1,
                  ),
                  PageViewChild(
                      img: 'assets/images/out2.png',
                      text: AppLocalizations.of(context)!.title_view2,
                      secondText: AppLocalizations.of(context)!.page_view2),
                  PageViewChild(
                    img: 'assets/images/outn.png',
                    text: AppLocalizations.of(context)!.title_view3,
                    secondText: AppLocalizations.of(context)!.page_view3,
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Indicator(
                  margin: 13.w,
                  selected: pageNumber == 0,
                ),
                Indicator(
                  margin: 13.w,
                  selected: pageNumber == 1,
                ),
                Indicator(
                  margin: 13.w,
                  selected: pageNumber == 2,
                ),
              ],
            ),
            SizedBox(
              height: 89.h,
            ),
          ],
        ),
      ),
    );
  }
}
