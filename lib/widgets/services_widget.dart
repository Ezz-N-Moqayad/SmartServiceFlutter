import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_service_flutter/constants/colors.dart';
import 'package:smart_service_flutter/screens/home/delivery_services_screen.dart';
import 'package:smart_service_flutter/screens/home/services_screen.dart';

// ignore: must_be_immutable
class ServicesWidget extends StatelessWidget {
  String url, nameServices, detailsServices;

  ServicesWidget(this.url, this.nameServices, this.detailsServices, {Key? key})
      : super(key: key); // ignore: empty_constructor_bodies
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 14.0),
      child: InkWell(
        onTap: () {
          if (nameServices ==
              AppLocalizations.of(context)!.home_delivery_service) {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => DeliveryServiceScreen(nameServices),
              ),
            );
          } else {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ServiceScreen(nameServices),
              ),
            );
          }
        },
        child: Container(
          width: 372.w,
          height: 92.h,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(28),
          ),
          child: Row(
            children: [
              SizedBox(
                width: 60.w,
                height: 60.h,
                child: Padding(
                  padding: EdgeInsetsDirectional.only(start: 12.w),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(url),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.only(
                    start: 16.w, top: 21.h, bottom: 16.h),
                child: SizedBox(
                  width: 231.w,
                  height: 55.h,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        nameServices,
                        style: TextStyle(
                          color: bigText,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.sp,
                        ),
                      ),
                      Text(
                        detailsServices,
                        style: TextStyle(
                          color: smallText,
                          fontWeight: FontWeight.bold,
                          fontSize: 14.sp,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              IconButton(
                onPressed: () {},
                color: const Color(0xffCBC9D9),
                icon: const Icon(Icons.arrow_back_ios_new),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
