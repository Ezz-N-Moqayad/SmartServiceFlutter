import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_service_flutter/Shared/sharedPrefController.dart';
import 'package:smart_service_flutter/constants/colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

// ignore: must_be_immutable
class CounterWidget extends StatefulWidget {
  const CounterWidget({Key? key}) : super(key: key);

  @override
  // ignore: no_logic_in_create_state
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int counter = 0;
  int? servicePrice = 200;
  int totalAmount = 0;
  bool _visible = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        SizedBox(
          width: 86.w,
          height: 27.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  if (counter > 0) {
                    counter--;
                    totalAmount = servicePrice! * counter;
                  }
                  if (counter < 1) {
                    _visible = false;
                  }
                  setState(() {});
                },
                child: Container(
                  width: 22.w,
                  height: 22.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(11),
                    border: Border.all(
                      color: mainColor,
                      width: 1.w,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.only(start: 4.w, end: 4.w),
                    child: Divider(
                      thickness: 2.h,
                      color: mainColor,
                    ),
                  ),
                ),
              ),
              Text(
                '$counter',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.sp,
                ),
              ),
              InkWell(
                onTap: () {
                  counter++;
                  totalAmount = servicePrice! * counter;
                  _visible = true;
                  setState(() {});
                },
                child: Container(
                  width: 22.w,
                  height: 22.h,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(11),
                    border: Border.all(
                      color: mainColor,
                      width: 1.w,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.all(4.0),
                    child: Stack(
                      children: [
                        Divider(
                          thickness: 2.h,
                          color: mainColor,
                        ),
                        VerticalDivider(
                          thickness: 2.h,
                          color: mainColor,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 24.h,
        ),
        AnimatedOpacity(
          opacity: _visible ? 1 : 0,
          duration: const Duration(milliseconds: 250),
          child: Row(
            children: [
              Text(
                AppLocalizations.of(context)!.the_total_amount,
                style: TextStyle(
                  color: mainColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 12.sp,
                ),
              ),
              Text(
                '$totalAmount ${AppLocalizations.of(context)!.shekel}',
                style: TextStyle(
                  color: bigText,
                  fontWeight: FontWeight.bold,
                  fontSize:
                      SharedPrefController().lanCode == 'en' ? 10.sp : 12.sp,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
