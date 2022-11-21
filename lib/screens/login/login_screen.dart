// ignore_for_file: avoid_print, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:smart_service_flutter/utils/helpers.dart';
import '../../Shared/sharedPrefController.dart';
import '../../api/controllers/login_api_controller.dart';
import '../../constants/colors.dart';
import '../../provider/ChangeLanguage.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_text_field.dart';
import '../../widgets/display_logo.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with Helpers {
  late TextEditingController _numberTextController;

  @override
  void initState() {
    super.initState();
    _numberTextController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _numberTextController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: SharedPrefController().lanCode == 'en'
              ? CrossAxisAlignment.end
              : CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/backgroundScreenLogin_top.png',
              fit: BoxFit.cover,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DisplayLogo(image: 'assets/images/logoForLogin.png'),
                SizedBox(height: 50.2.h),
                Text(
                  AppLocalizations.of(context)!.login,
                  style: TextStyle(
                    color: bigText,
                    fontWeight: FontWeight.bold,
                    fontFamily: SharedPrefController().lanCode == 'ar'
                        ? 'Tajawal'
                        : 'Roboto',
                    fontSize: 28.sp,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 55.w, left: 60.w),
                      child: Text(
                        AppLocalizations.of(context)!.phoneNumber,
                        style: TextStyle(
                          color: smallText,
                          fontFamily: SharedPrefController().lanCode == 'ar'
                              ? 'Tajawal'
                              : 'Roboto',
                        ),
                      ),
                    ),
                    SizedBox(height: 13.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 44.h,
                          width: 114.w,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: CustomTextField(
                            enabled: false,
                            controller: TextEditingController(),
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.start,
                            color: Colors.black,
                            hint: '+970',
                          ),
                        ),
                        SizedBox(width: 10.w),
                        Container(
                          height: 44.h,
                          width: 206.w,
                          decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(10.r)),
                          child: CustomTextField(
                            controller: _numberTextController,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.start,
                            color: smallText,
                            hint: AppLocalizations.of(context)!.enterNumber,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 67.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 44.h,
                          width: 319.w,
                          child: CustomButton(
                            name: AppLocalizations.of(context)!.login,
                            onPress: () async => await performLogin(),
                            color: mainColor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.dontHaveAccount,
                      style: TextStyle(
                        fontFamily: SharedPrefController().lanCode == 'ar'
                            ? 'Tajawal'
                            : 'Roboto',
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/register_screen');
                      },
                      child: Text(
                        AppLocalizations.of(context)!.registration,
                        style: TextStyle(
                          color: mainColor,
                          fontFamily: SharedPrefController().lanCode == 'ar'
                              ? 'Tajawal'
                              : 'Roboto',
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: mainColor,
        onPressed: () {},
        child: PopupMenuButton<String>(
          icon: const Icon(Icons.language_outlined),
          offset: const Offset(0, -170),
          itemBuilder: (context) {
            return [
              const PopupMenuItem(value: 'ar', child: Text('Ar')),
              const PopupMenuItem(value: 'en', child: Text('En')),
              const PopupMenuItem(value: 'he', child: Text('He')),
            ];
          },
          onSelected: (value) {
            SharedPrefController().setLocale(value);
            Provider.of<ChangeLanguage>(context, listen: false)
                .ChangeLanguageCode(value);
          },
        ),
      ),
    );
  }

  Future<void> performLogin() async {
    if (checkData()) {
      await login();
    }
  }

  bool checkData() {
    if (_numberTextController.text.isNotEmpty) {
      return true;
    }
    showSnackBar(context: context, content: 'Enter required data', error: true);
    return false;
  }

  Future<void> login() async {
    bool status = await LoginApiController().login(
        context: context,
        telephone: _numberTextController.text,
        countryCode: "+970");
    if (status) {
      Navigator.pushNamed(context, '/activation_screen');
    }
  }
}
