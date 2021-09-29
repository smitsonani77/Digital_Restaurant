import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:myapp/page/data/data_model.dart';

final String url = "Your API service url";

List<Item> parseUser(String responseBody) {
  var list = json.decode(responseBody) as List<dynamic>;
  var items = list.map((e) => Item.fromJson(e)).toList();
  return items;
}

Future<List<Item>> fetchUsers() async {
  final http.Response response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    return compute(parseUser, response.body);
  } else {
    throw Exception(response.statusCode);
  }
}
