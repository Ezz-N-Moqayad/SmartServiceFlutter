import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_service_flutter/Shared/sharedPrefController.dart';
import 'package:smart_service_flutter/constants/colors.dart';
import 'package:smart_service_flutter/widgets/body_registration.dart';
import 'package:smart_service_flutter/widgets/custom_button.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          AppLocalizations.of(context)!.registerNewUser,
          style: TextStyle(
            color: Colors.black,
            fontFamily:
                SharedPrefController().lanCode == 'ar' ? 'Tajawal' : 'Roboto',
          ),
        ),
      ),
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 122.h,
              ),
              BodyRegistration(
                title: AppLocalizations.of(context)!.registerNewUser,
                subtitle: AppLocalizations.of(context)!.descriptionForResister,
              ),
              SizedBox(
                width: 319.w,
                height: 44.h,
                child: CustomButton(
                  colorText: mainColor,
                  name: AppLocalizations.of(context)!.client,
                  onPress: () {
                    Navigator.pushNamed(context, '/register_client_screen');
                  },
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                width: 319.w,
                height: 44.h,
                child: CustomButton(
                  name: AppLocalizations.of(context)!.serviceProvider,
                  onPress: () {
                    Navigator.pushNamed(
                        context, '/register_service_provider_screen');
                  },
                  color: mainColor,
                ),
              ),
              SizedBox(
                height: 36.h,
              ),
              SizedBox(
                height: 320.h,
                width: 307.w,
                child: Image.asset('assets/images/imageRegister.png'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
