import 'package:http/http.dart';
import 'dart:convert';

class NewsApi {
  String url =
      'http://newsapi.org/v2/top-headlines?country=tr&apiKey=b987528965b84f99ada2bb070dd556ba';
  Map data;

  String keyword = '';

  Future<void> getNews() async {
    try {
      final response = await get(
          'http://newsapi.org/v2/top-headlines?country=tr&apiKey=b987528965b84f99ada2bb070dd556ba');
      data = json.decode(response.body);
    } catch (e) {}
  }

  Future<void> getCategoryNews(category) async {
    try {
      final response = await get(
          'http://newsapi.org/v2/top-headlines?country=tr&apiKey=b987528965b84f99ada2bb070dd556ba&category=$category');
      data = json.decode(response.body);
    } catch (e) {}
  }
}
