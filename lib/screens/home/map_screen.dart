import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:smart_service_flutter/Shared/sharedPrefController.dart';
import 'package:smart_service_flutter/constants/colors.dart';
import 'package:smart_service_flutter/widgets/custom_button.dart';
import 'package:smart_service_flutter/widgets/custom_container_input.dart';
import 'package:smart_service_flutter/widgets/custom_text_field.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:smart_service_flutter/widgets/show_bottom_sheet.dart';

class MapScreen extends StatelessWidget {
  const MapScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: bigText),
        backgroundColor: Colors.transparent,
        title: Text(
          AppLocalizations.of(context)!.select_your_location,
          style: TextStyle(
            color: bigText,
            fontSize: 20,
            fontFamily:
                SharedPrefController().lanCode == 'ar' ? 'Tajawal' : 'Roboto',
          ),
        ),
        elevation: 0,
      ),
      body: Stack(
        children: [
          const GoogleMap(
            initialCameraPosition: CameraPosition(
              target: LatLng(31.5, 34.46667),
              zoom: 15,
            ),
          ),
          Positioned(
            top: 650.h,
            child: ShowBottomSheet(
              topRight: 0,
              topleft: 0,
              title: AppLocalizations.of(context)!.address,
              heigt: 302,
              witdh: 428,
              widget: SizedBox(
                height: 180.h,
                width: 319.w,
                child: Column(
                  children: [
                    CustomContainerInput(
                        text: AppLocalizations.of(context)!.address),
                    SizedBox(
                      height: 14.h,
                    ),
                    SizedBox(
                      width: 319.w,
                      height: 44.h,
                      child: Row(
                        children: [
                          Container(
                            height: 44.h,
                            width: 152.w,
                            decoration: BoxDecoration(
                              color: pinCode,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: CustomTextField(
                              controller: TextEditingController(),
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.start,
                              color: smallText,
                              hint:
                                  AppLocalizations.of(context)!.apartmentNumber,
                            ),
                          ),
                          SizedBox(
                            width: 15.w,
                          ),
                          Container(
                            height: 44.h,
                            width: 152.w,
                            decoration: BoxDecoration(
                              color: pinCode,
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            child: CustomTextField(
                              controller: TextEditingController(),
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              color: smallText,
                              hint: AppLocalizations.of(context)!.floorNumber,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    Container(
                      height: 44.h,
                      width: 319.w,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)),
                      child: CustomButton(
                        name: AppLocalizations.of(context)!.saveAddress,
                        onPress: () {},
                        color: mainColor,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
