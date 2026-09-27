import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const new({
    super.key,
    required this.title,
    required this.continent,
    required this.image,
    required this.description,
  });
  final String title;
  final String image;
  final String description;
  final String continent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Details News")),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 16),
        child: Column(
          spacing: 8,
          crossAxisAlignment: .start,
          children: [
            ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(8),
              child: Image.network(image),
            ),
            Text(title, style: Theme.of(context).textTheme.bodyLarge),
            Text(continent, style: Theme.of(context).textTheme.bodySmall),
            Text(description, style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
      ),
    );
  }
}
