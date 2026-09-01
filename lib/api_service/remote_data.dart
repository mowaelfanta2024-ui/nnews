import 'dart:convert';
import 'dart:math';

import 'package:http/http.dart' as http;
import 'package:nnews/models/news_models.dart';

class RemoteData {
  getNews() async {
    final url = Uri.parse("https://newsapi.org/v2/everything?q=salah&apiKey=2ff60912941c43b3837de66334bdd1f1");
    final result = await http.get(url);
    final resultAfter = jsonDecode(result.body);
    List news = resultAfter["articles"];
    return news.map((article) => NewsModels.fromJson(article)).toList();
  }
}