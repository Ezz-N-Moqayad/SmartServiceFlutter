// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_service_flutter/Shared/sharedPrefController.dart';
import 'package:smart_service_flutter/constants/colors.dart';

class AlertDialogWidget extends StatelessWidget {
  String url, title, content, dialogAction;

  // onPressed: () {
  //   showDialog(
  //       context: context,
  //       builder: (context) => AlertDialogWidget(
  //           'assets/images/check-mark.png',
  //           AppLocalizations.of(context)!
  //               .your_request_has_been_successful,
  //           AppLocalizations.of(context)!
  //               .your_order_will_be_kept_on_hold_until_the_service_provider_sees_it,
  //           AppLocalizations.of(context)!.oK));
  // },

  // ignore: use_key_in_widget_constructors
  AlertDialogWidget(this.url, this.title, this.content, this.dialogAction);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      child: Container(
        width: 319,
        height: 292,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.only(
              start: 40.w, top: 36.h, end: 41.w, bottom: 24.h),
          child: Column(
            children: <Widget>[
              Image.asset(url),
              Padding(
                padding: EdgeInsetsDirectional.only(top: 11.h, bottom: 18.h),
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    fontFamily: SharedPrefController().lanCode == 'ar'
                        ? 'Tajawal'
                        : 'Roboto',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(bottom: 24.h),
                child: Text(
                  content,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: smallText,
                    fontSize: 14,
                    fontFamily: SharedPrefController().lanCode == 'ar'
                        ? 'Tajawal'
                        : 'Roboto',
                  ),
                ),
              ),
              Container(
                height: 48.h,
                width: 125.w,
                decoration: BoxDecoration(
                  color: mainColor,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Center(
                  // ignore: deprecated_member_use
                  child: FlatButton(
                    onPressed: () => Navigator.pop(context),
                    child: Text(
                      dialogAction,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: SharedPrefController().lanCode == 'ar'
                            ? 'Tajawal'
                            : 'Roboto',
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
