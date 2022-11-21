// ignore_for_file: file_names

import 'package:shared_preferences/shared_preferences.dart';
import 'package:smart_service_flutter/models/service_provider.dart';

class SharedPrefController {
  static final SharedPrefController _instance =
      SharedPrefController._internal();
  late final SharedPreferences? _preferences;

  SharedPrefController._internal();

  Future<void> initPref() async {
    _preferences = await SharedPreferences.getInstance();
  }

  factory SharedPrefController() {
    return _instance;
  }

  Future<void> save({required ServiceProvider serviceProvider}) async {
    await _preferences!.setString('isProvider', serviceProvider.isProvider);
    await _preferences!.setString('name', serviceProvider.name);
    await _preferences!.setString('address', serviceProvider.address);
    await _preferences!.setString('longitude', serviceProvider.longitude);
    await _preferences!.setString('latitude', serviceProvider.latitude);
    await _preferences!.setString('telephone', serviceProvider.telephone);
    await _preferences!.setString('location', serviceProvider.location);
    await _preferences!.setString('service_id', serviceProvider.serviceId);
    await _preferences!.setString('from_time', serviceProvider.fromTime);
    await _preferences!.setString('to_time', serviceProvider.toTime);
    await _preferences!.setString('country_code', serviceProvider.countryCode);
    await _preferences!.setString('price', serviceProvider.price);
    await _preferences!.setInt('agree', serviceProvider.agree);
    await _preferences!
        .setString('service_description', serviceProvider.serviceDescription);
  }

  bool get loggedIn => _preferences!.getBool('logged_in') ?? false;

  Future<bool> logout() async {
    return await _preferences!.clear();
  }

  Future<bool> setLocale(String locale) async {
    return await _preferences!.setString('locale', locale);
  }

  String? get lanCode => _preferences!.getString('locale') ?? 'en';
}
