import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:smart_service_flutter/api/api_settings.dart';
import 'package:smart_service_flutter/models/home_page.dart';
import 'package:smart_service_flutter/utils/helpers.dart';

class HomePageApiController with Helpers {
  Future<List<HomePage>> postHomePage() async {
    var url = Uri.parse(ApiSettings.HOME_PAGE);
    var response = await http.post(url,
        body: jsonEncode(<String, String>{
          "longitude": "34.5015752",
          "latitude": "31.5307941"
        }),
        headers: {'X-Oc-Merchant-Id': '6tnoz1eRV1ETLo2R7MfgYJWBOY4C31pF'});

    if (response.statusCode == 200) {
      var jsonResponseBody = jsonDecode(response.body);
      var homeJsonArray = jsonResponseBody['data'] as List;
      List<HomePage> category = homeJsonArray
          .map((homeJsonObject) => HomePage.fromJson(homeJsonObject))
          .toList();

      return category;
    } else if (response.statusCode != 500) {
      //ERROR - 4xx

    } else {
      //SERVER ERROR - 5xx
    }
    return [];
  }
}
