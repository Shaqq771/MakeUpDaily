import 'dart:convert';
import 'package:makeupdaily/model/makeup.dart';
import 'package:http/http.dart' as http;

class MakeupApi {
  static Future<List<Makeup>> getMakeup() async {
    var uri = Uri.https('sephora.p.rapidapi.com', '/products/list',
        {"categoryId": "cat160006", "pageSize": "60", "currentPage": "1"});

    final response = await http.get(uri, headers: {
      "x-rapidapi-host": "sephora.p.rapidapi.com",
      "x-rapidapi-key": "e5faf2c0f4mshb7575ceecc8671ep1cb849jsn9fb19ced3d60",
      "useQueryString": "true"
    });

    Map data = jsonDecode(response.body);
    List _temp = [];

    for (var i in data['products']) {
      _temp.add(i);
    }
    return Makeup.makeupFromSnapshot(_temp);
  }
}
