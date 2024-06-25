import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutternews/models/article_model.dart';

class News {
  List<ArticleModel> news = [];

  Future<void> getNews() async {
    String url =
        "https://newsapi.org/v2/top-headlines?country=in&category=business&apiKey=e498f425bd8f4204b2873ed7cee9dc8c";
    var response = await http.get(Uri.parse(url));
    var jsonData = jsonDecode(response.body);

    if (jsonData['status'] == "ok") {
      if (jsonData["articles"] != null) {
        jsonData["articles"].forEach((element) {
          if (element['urlToImage'] != null && element['description'] != null) {
            // Ensure that all required fields are non-null before creating ArticleModel
            ArticleModel articleModel = ArticleModel(
              title: element['title'] ?? '',
              author: element['author'] ?? '',
              description: element['description'] ?? '',
              url: element["url"] ?? '',
              urlToImage: element['urlToImage'] ?? '',
              content: element["content"] ?? '',
            );
            news.add(articleModel);
          }
        });
      }
    }
  }
}
