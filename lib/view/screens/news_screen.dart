import 'package:flutter/material.dart';
import 'package:new_app/view/widgets/news_item.dart';

class NewsScreen extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("News App")),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => NewsItem(
          continent: "continent",
          image: "https://static.vecteezy.com/system/resources/thumbnails/050/393/628/small/cute-curious-gray-and-white-kitten-in-a-long-shot-photo.jpg",
          title: "Russian warship: Moskva sinks in Black Sea",
        ),
      ),
    );
  }
}
