import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_service_flutter/Shared/sharedPrefController.dart';
import 'package:smart_service_flutter/constants/colors.dart';
import 'package:smart_service_flutter/widgets/custom_app_bar.dart';
import 'package:smart_service_flutter/widgets/custom_button.dart';
import 'package:smart_service_flutter/widgets/order_details_row_widget.dart';
import 'package:smart_service_flutter/widgets/row_app_bar.dart';
import 'package:smart_service_flutter/widgets/show_container.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class OrderDetailsReviewScreen extends StatelessWidget {
  const OrderDetailsReviewScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              CustomAppBar(
                color: primeColor,
                width: 429.w,
                height: 156.h,
                child: RowAppBar(
                    title: AppLocalizations.of(context)!.review_order_details),
              ),
              SizedBox(
                height: 28.h,
              ),
              SizedBox(
                height: 692.h,
                width: 402.w,
                child: Column(
                  children: [
                    showContainer(
                      widget: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16.w, vertical: 16),
                            child: Text(
                              AppLocalizations.of(context)!.detailsOrder,
                              style: TextStyle(
                                color: bigText,
                                fontFamily:
                                    SharedPrefController().lanCode == 'ar'
                                        ? 'Tajawal'
                                        : 'Roboto',
                                fontWeight: FontWeight.bold,
                                fontSize: 20.sp,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 11.h,
                          ),
                          Divider(
                            height: 1.h,
                            thickness: 1,
                          ),
                          orderDetailsRowWidget(
                              title: AppLocalizations.of(context)!.request_date,
                              subTitle: '10-11-2020'),
                          Divider(
                            indent: 13,
                            endIndent: 13,
                            height: 1.h,
                            thickness: 1,
                          ),
                          orderDetailsRowWidget(
                              title: AppLocalizations.of(context)!.the_service,
                              subTitle:
                                  AppLocalizations.of(context)!.electricity),
                          Divider(
                            indent: 13,
                            endIndent: 13,
                            height: 1.h,
                            thickness: 1,
                          ),
                          orderDetailsRowWidget(
                              title: AppLocalizations.of(context)!.address,
                              subTitle: AppLocalizations.of(context)!
                                  .ram_allah_al_quds),
                          Divider(
                            indent: 13,
                            endIndent: 13,
                            height: 1.h,
                            thickness: 1,
                          ),
                          orderDetailsRowWidget(
                              title: AppLocalizations.of(context)!.notes,
                              subTitle: AppLocalizations.of(context)!
                                  .i_have_a_problem),
                        ],
                      ),
                      height: 270.h,
                      width: 372,
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    showContainer(
                      widget: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16.w, vertical: 16),
                            child: Text(
                              AppLocalizations.of(context)!.payment_details,
                              style: TextStyle(
                                color: bigText,
                                fontFamily:
                                    SharedPrefController().lanCode == 'ar'
                                        ? 'Tajawal'
                                        : 'Roboto',
                                fontWeight: FontWeight.bold,
                                fontSize: 20.sp,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 11.h,
                          ),
                          Divider(
                            height: 1.h,
                            thickness: 1,
                          ),
                          orderDetailsRowWidget(
                              title:
                                  AppLocalizations.of(context)!.priceOfService,
                              subTitle:
                                  '${AppLocalizations.of(context)!.shekel} 400'),
                          Divider(
                            indent: 13,
                            endIndent: 13,
                            height: 1.h,
                            thickness: 1,
                          ),
                          orderDetailsRowWidget(
                              title: AppLocalizations.of(context)!
                                  .transportation_allowance,
                              subTitle:
                                  '${AppLocalizations.of(context)!.shekel} 10'),
                          Divider(
                            indent: 13,
                            endIndent: 13,
                            height: 1.h,
                            thickness: 1,
                          ),
                          orderDetailsRowWidget(
                              title:
                                  AppLocalizations.of(context)!.inspection_fee,
                              subTitle:
                                  '${AppLocalizations.of(context)!.shekel} 2'),
                          Divider(
                            indent: 13,
                            endIndent: 13,
                            height: 1.h,
                            thickness: 1,
                          ),
                          orderDetailsRowWidget(
                              title: AppLocalizations.of(context)!
                                  .wallet_deduction,
                              subTitle:
                                  '${AppLocalizations.of(context)!.shekel} -30'),
                          Divider(
                            indent: 13,
                            endIndent: 13,
                            height: 1.h,
                            thickness: 1,
                          ),
                          orderDetailsRowWidget(
                              title:
                                  AppLocalizations.of(context)!.payment_method,
                              subTitle:
                                  AppLocalizations.of(context)!.cash_money),
                          Divider(
                            indent: 13,
                            endIndent: 13,
                            height: 1.h,
                            thickness: 1,
                          ),
                          orderDetailsRowWidget(
                            title: AppLocalizations.of(context)!.total_payment,
                            subTitle:
                                '${AppLocalizations.of(context)!.shekel} 405',
                            textSize: 18,
                            color: mainColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ],
                      ),
                      height: 368.h,
                      width: 372,
                    ),
                  ],
                ),
              )
            ],
          ),
          Positioned(
            top: 842.h,
            child: Container(
              height: 84.h,
              width: 428.w,
              color: backgroundColor,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      height: 48.h,
                      width: 125.w,
                      child: CustomButton(
                          name: AppLocalizations.of(context)!.oK,
                          onPress: () {
                            Navigator.pushNamed(
                                context, '/bottom_navigation');
                          },
                          color: mainColor),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
