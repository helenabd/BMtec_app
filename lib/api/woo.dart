import 'dart:convert';

import 'package:http/http.dart' as http;

final baseURL = 'https://prova01.bmtec.us/wp-json/wc/v3';
final ck = 'consumer_key=ck_d6721e8e487905bf92b29707218f3b894d9d93d6';
final cs = 'consumer_secret=cs_7f75f27e143e6d73f19a79d25c7ce85709a372d4';

Future<List> products() async {
  final url = "$baseURL/products?$ck&$cs";

  final response = await http.get(url, headers: {"Accept": "application/json"});
  var jsonConvert = jsonDecode(response.body);
  return jsonConvert;
}

Future<List> categories() async {
  final url = "$baseURL/products/categories?$ck&$cs";

  final response = await http.get(url, headers: {"Accept": "application/json"});
  var jsonConvert = jsonDecode(response.body);
  return jsonConvert;
}
