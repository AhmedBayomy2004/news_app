import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:new_app/model/news_model.dart';
import 'package:new_app/utils/app_constants.dart';

class ApiHandler {
  static Future<Result> getNews(String key) async {
    Uri url = Uri.parse("${AppConstants.baseUrl}?q=keyword&apiKey=$key");
    try {
      final response = await http.get(url);

      if (response.statusCode >= 200 && response.statusCode < 300) {
        final data = jsonDecode(response.body);
        final articles = data["articles"];
        List<NewsModel> news = [];
        for (var article in articles) {
          news.add(
            NewsModel(
              image: article["urlToImage"] ?? "https://static.vecteezy.com/system/resources/thumbnails/050/393/628/small/cute-curious-gray-and-white-kitten-in-a-long-shot-photo.jpg",
              author: article["author"] ?? "no author",
              title: article["title"] ?? "no title",
              description: article["description"] ?? "no descrption",
            ),
          );
        }
        return Success(res: news);
      } else {
        return Error(res: "error: ${response.statusCode}");
      }
    } catch (e) {
      return Error(res: "error: No connection");
    }
  }
}

sealed class Result<T> {
  final T res;

  new({required this.res});
}

class Success extends Result<List<NewsModel>> {
  new({required super.res});
}

class Error extends Result<String> {
  new({required super.res});
}
