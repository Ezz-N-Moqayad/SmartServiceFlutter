import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:smart_service_flutter/constants/colors.dart';
import 'package:smart_service_flutter/provider/ChangeLanguage.dart';
import 'screens/home/bottom_navigation.dart';
import 'screens/home/map_screen.dart';
import 'screens/home/order_details.dart';
import 'screens/home/order_details_review_screen.dart';
import 'screens/home/order_notification.dart';
import 'screens/home/order_state_screen.dart';
import 'screens/home/support_service_second.dart';
import 'screens/home/support_servise.dart';
import 'screens/login/activation_screen.dart';
import 'screens/login/login_screen.dart';
import 'screens/onBoarding/out_boarding_screen.dart';
import 'screens/signUp/register_client_screen.dart';
import 'screens/signUp/register_screen.dart';
import 'screens/signUp/register_service_provider.dart';
import 'screens/splash/splash_screen.dart';
import 'screens/home/home_screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:smart_service_flutter/Shared/sharedPrefController.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPrefController().initPref();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ChangeLanguage>(create: (_) => ChangeLanguage()),
      ],
      builder: (BuildContext context, Widget? child) {
        return ScreenUtilInit(
          designSize: const Size(428, 926),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (context, child) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              localizationsDelegates: const [
                AppLocalizations.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate
              ],
              supportedLocales: const [
                Locale('ar', ''),
                Locale('en', ''),
                Locale('he', ''),
              ],
              locale: Locale(Provider.of<ChangeLanguage>(context).language),
              // locale: Locale('ar'),
              title: 'Smart Service',
              theme: ThemeData(
                backgroundColor: backgroundColor,
                primarySwatch: Colors.blue,
              ),
              initialRoute: '/login_screen',
              routes: {
                '/splash_screen': (context) => const SplashScreen(),
                '/out_boarding_screen': (context) => const OutBoardingScreen(),
                '/login_screen': (context) => const LoginScreen(),
                '/activation_screen': (context) => const ActivationScreen(),
                '/register_screen': (context) => const RegisterScreen(),
                '/register_client_screen': (context) =>
                    const RegisterClientScreen(),
                '/register_service_provider_screen': (context) =>
                    const RegisterServiceProviderScreen(),
                '/bottom_navigation': (context) => BottomNavigation(),
                '/Home': (context) => const Home(),
                '/map_screen': (context) => const MapScreen(),
                '/order_details_screen': (context) =>
                    const OrderDetailsScreen(),
                '/order_details_review_screen': (context) =>
                    const OrderDetailsReviewScreen(),
                '/order_state_screen': (context) => const OrderStateScreen(),
                '/order_notification_screen': (context) =>
                    const orderNotificationScreen(),
                '/support_service_second': (context) => SupportServiceSecond(),
                '/support_service_screen': (context) => SupportServiceScreen(),
              },
            );
          },
        );
      },
    );
  }
}
