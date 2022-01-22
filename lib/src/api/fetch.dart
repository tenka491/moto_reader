import 'dart:convert';
import 'package:http/http.dart' as http;

import 'article.dart';

List<Article> parseArticles(String responseBody) {
  final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();

  return parsed.map<Article>((json)=> Article.fromJson(json)).toList();
}

Future<List<Article>> fetchAllArticles() async {
  var url = Uri.parse('http://192.168.1.10:8093/articles');
  final response = await http
      .get(url);

  if (response.statusCode == 200) {
    return parseArticles(response.body);
  } else {
    throw Exception('Failed to load articles');
  }
}