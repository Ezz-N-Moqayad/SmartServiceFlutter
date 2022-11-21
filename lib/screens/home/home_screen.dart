import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_service_flutter/Shared/sharedPrefController.dart';
import 'package:smart_service_flutter/api/controllers/home_api_controller.dart';
import 'package:smart_service_flutter/constants/colors.dart';
import 'package:smart_service_flutter/models/home_page.dart';
import 'package:smart_service_flutter/widgets/custom_app_bar.dart';
import 'package:smart_service_flutter/widgets/custom_button.dart';
import 'package:smart_service_flutter/widgets/custom_container_input.dart';
import 'package:smart_service_flutter/widgets/services_widget.dart';
import 'package:smart_service_flutter/widgets/show_bottom_sheet.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late Future<List<HomePage>> _future;
  List<HomePage> category = <HomePage>[];

  @override
  void initState() {
    super.initState();
    _future = HomePageApiController().postHomePage();
  }

  @override
  Widget build(BuildContext context) {
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
                  padding: EdgeInsetsDirectional.only(
                      start: 29.w, end: 28.w, top: 48.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          showModalBottomSheet(
                            context: context,
                            backgroundColor: Colors.transparent,
                            builder: (context) {
                              return ShowBottomSheet(
                                topRight: 18.r,
                                topleft: 18.r,
                                title: AppLocalizations.of(context)!
                                    .select_your_location,
                                heigt: 361.h,
                                witdh: 431.w,
                                widget: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CustomContainerInput(
                                      text: AppLocalizations.of(context)!
                                          .addAddressOfYourHouse,
                                      icon: const Icon(Icons.home_outlined),
                                    ),
                                    SizedBox(
                                      height: 14.h,
                                    ),
                                    CustomContainerInput(
                                      text: AppLocalizations.of(context)!
                                          .cityName,
                                      icon: const Icon(
                                          Icons.location_city_outlined),
                                    ),
                                    SizedBox(
                                      height: 14.h,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.pushNamed(
                                            context, '/map_screen');
                                      },
                                      child: CustomContainerInput(
                                          enabled: false,
                                          text: AppLocalizations.of(context)!
                                              .chooseAddressOnMap,
                                          icon:
                                              const Icon(Icons.place_outlined)),
                                    ),
                                    SizedBox(
                                      height: 25.h,
                                    ),
                                    Container(
                                      height: 44.h,
                                      width: 319.w,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: CustomButton(
                                        name: AppLocalizations.of(context)!
                                            .saveAddress,
                                        onPress: () {},
                                        color: mainColor,
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          );
                        },
                        child: TextField(
                          keyboardType: TextInputType.text,
                          enabled: false,
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.all(8),
                            hintText: AppLocalizations.of(context)!
                                .select_your_location,
                            filled: true,
                            fillColor: const Color(0x26ffffff),
                            hintStyle: TextStyle(
                              color: bigText,
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                              fontFamily: SharedPrefController().lanCode == 'ar'
                                  ? 'Tajawal'
                                  : 'Roboto',
                            ),
                            constraints: BoxConstraints(
                              maxWidth: 371.w,
                              maxHeight: 48.h,
                            ),
                            prefixIcon: const Icon(
                              Icons.location_on,
                              color: mainColor,
                            ),
                            suffixIcon: const Icon(
                              Icons.keyboard_arrow_down_rounded,
                              color: mainColor,
                            ),
                          ),
                        ),
                      ),
                      const Divider(color: mainColor, height: 1, thickness: 1),
                      SizedBox(height: 20.h),
                      Text(
                        AppLocalizations.of(context)!.hello_Manal_Mansour,
                        style: TextStyle(
                          color: mainColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          fontFamily: SharedPrefController().lanCode == 'ar'
                              ? 'Tajawal'
                              : 'Roboto',
                        ),
                      ),
                      SizedBox(height: 4.h),
                      Text(
                        AppLocalizations.of(context)!.how_can_we_help_you,
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: SharedPrefController().lanCode == 'ar'
                              ? 'Tajawal'
                              : 'Roboto',
                          fontWeight: FontWeight.bold,
                          fontSize: 14.sp,
                        ),
                      ),
                      SizedBox(height: 17.h),
                      Container(
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: TextField(
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: AppLocalizations.of(context)!
                                .what_service_are_you_looking_for,
                            filled: true,
                            fillColor: const Color(0xffF5F6FA),
                            contentPadding: const EdgeInsets.all(15),
                            hintStyle: TextStyle(
                              color: smallText,
                              fontFamily: SharedPrefController().lanCode == 'ar'
                                  ? 'Tajawal'
                                  : 'Roboto',
                              fontSize: 16.sp,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 0.w),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            prefixIcon: const Icon(
                              Icons.search,
                              color: Color(0xffCBC9D9),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 24.h),
                      SizedBox(
                        height: 575.h,
                        child: MediaQuery.removePadding(
                          removeTop: true,
                          removeBottom: true,
                          context: context,
                          child: FutureBuilder<List<HomePage>>(
                            future: _future,
                            builder: (context, snapshot) {
                              if (snapshot.connectionState ==
                                  ConnectionState.waiting) {
                                return Center(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(height: 225.h),
                                      const CircularProgressIndicator(),
                                    ],
                                  ),
                                );
                              } else if (snapshot.hasData &&
                                  snapshot.data!.isNotEmpty) {
                                category = snapshot.data!;
                                return ListView.builder(
                                  itemCount: category.length,
                                  itemBuilder: (context, index) {
                                    return ServicesWidget(
                                      category[index].image,
                                      category[index].name,
                                      category[index].description,
                                    );
                                  },
                                );
                              } else {
                                return Center(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(height: 225.h),
                                      Icon(
                                        Icons.warning,
                                        color: Colors.grey.shade500,
                                        size: 80,
                                      ),
                                      Text(
                                        'NO DATA',
                                        style: TextStyle(
                                          color: Colors.grey.shade500,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16.sp,
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              }
                            },
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
