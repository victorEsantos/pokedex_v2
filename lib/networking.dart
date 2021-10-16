import 'dart:convert';

import 'package:http/http.dart' as http;

class NetworkHelper {
  static Future<dynamic> getData(String url) async {
    Uri uri = Uri.parse(url);
    http.Response response = await http.get(uri);
    if (response.statusCode == 200) {
      String data = response.body;
      return jsonDecode(data);
    } else {
      print(response.statusCode);
    }
  }
}
