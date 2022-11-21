// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:smart_service_flutter/Shared/sharedPrefController.dart';

class ChangeLanguage extends ChangeNotifier {
  String language = SharedPrefController().lanCode!;

  // ignore: non_constant_identifier_names
  void ChangeLanguageCode(String newLanguageCode) {
    language = newLanguageCode;
    notifyListeners();
  }
}
