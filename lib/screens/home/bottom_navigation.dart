import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:smart_service_flutter/constants/colors.dart';
import 'package:smart_service_flutter/screens/home/order_state_screen.dart';
import 'package:smart_service_flutter/widgets/custom_button.dart';
import 'package:smart_service_flutter/models/bnScreen.dart';
import 'about_us_screen.dart';
import 'home_screen.dart';

// ignore: use_key_in_widget_constructors
class BottomNavigation extends StatefulWidget {
  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _index = 0;

  final List<BnScreen> _bnScreen = <BnScreen>[
    const BnScreen(title: 'Home', widget: Home()),
    const BnScreen(title: 'Notification', widget: OrderStateScreen()),
    const BnScreen(title: 'About Us', widget: AboutUsScreen()),
    BnScreen(
      title: 'Exit',
      widget: CustomButton(
        name: 'name',
        onPress: () {},
        color: mainColor,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (value) {
          _index = value;
          setState(() {});
        },
        selectedItemColor: mainColor,
        currentIndex: _index,
        items: [
          BottomNavigationBarItem(
              icon: const Icon(Icons.home_outlined),
              label: AppLocalizations.of(context)!.home),
          BottomNavigationBarItem(
              icon: const Icon(Icons.notifications_none_rounded),
              label: AppLocalizations.of(context)!.notices),
          BottomNavigationBarItem(
              icon: const Icon(Icons.info_outline),
              label: AppLocalizations.of(context)!.about_us),
          BottomNavigationBarItem(
              activeIcon: IconButton(
                icon: const Icon(Icons.logout),
                onPressed: () {
                  showAlert(context);
                },
              ),
              icon: IconButton(
                icon: const Icon(Icons.logout),
                onPressed: () {
                  showAlert(context);
                },
              ),
              label: AppLocalizations.of(context)!.exit)
        ],
      ),
      body: _bnScreen[_index].widget,
    );
  }

  showAlert(BuildContext context) async {
    return await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            AppLocalizations.of(context)!.areYouSureYouWantToLogOut,
            style: const TextStyle(fontWeight: FontWeight.normal, fontSize: 15),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () =>
                  Navigator.pop(context, AppLocalizations.of(context)!.no),
              child: Text(
                AppLocalizations.of(context)!.no,
                style: const TextStyle(color: mainColor),
              ),
            ),
            TextButton(
              onPressed: () =>
                  Navigator.pushReplacementNamed(context, '/login_screen'),
              child: Text(
                AppLocalizations.of(context)!.yes,
                style: const TextStyle(color: mainColor),
              ),
            ),
          ],
        );
      },
    );
  }
}
