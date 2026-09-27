import 'package:flutter/material.dart';
import 'package:new_app/view/screens/details_screen.dart';

class NewsItem extends StatelessWidget {
  const new({
    super.key,
    required this.author,
    required this.image,
    required this.title,
    required this.description,
  });
  final String author;
  final String image;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DetailsScreen(
            title: title,
            continent: author,
            image: image,
            description: description,
          ),
        ),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 32),
        child: Column(
          spacing: 8,
          crossAxisAlignment: .start,
          children: [
            ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(8),
              child: Image.network(image),
            ),
            Text(author, style: Theme.of(context).textTheme.bodySmall),
            Text(title, style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
      ),
    );
  }
}
