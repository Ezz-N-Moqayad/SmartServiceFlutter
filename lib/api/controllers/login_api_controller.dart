import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:smart_service_flutter/api/api_settings.dart';
import 'package:smart_service_flutter/utils/helpers.dart';

class LoginApiController with Helpers {
  Future<bool> login({
    required BuildContext context,
    required String telephone,
    required String countryCode,
  }) async {
    var url = Uri.parse(ApiSettings.LOGIN);
    var response = await http.post(url,
        body: jsonEncode(<String, String>{
          "telephone": telephone,
          "country_code": countryCode
        }),
        headers: {'X-Oc-Merchant-Id': '6tnoz1eRV1ETLo2R7MfgYJWBOY4C31pF'});

    if (response.statusCode == 200) {
      return true;
    } else if (response.statusCode != 500) {
      // ERROR - 4xx
      showSnackBar(
        context: context,
        content: 'Something went wrong, please try again!',
      );
    } else {
      // SERVER ERROR - 5xx
      showSnackBar(
        context: context,
        content: 'Something went wrong, please try again!',
        error: true,
      );
    }
    return false;
  }
}
