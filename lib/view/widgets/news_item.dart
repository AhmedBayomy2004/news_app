import 'package:flutter/material.dart';
import 'package:new_app/view/screens/details_screen.dart';

class NewsItem extends StatelessWidget {
  const new({
    super.key,
    required this.continent,
    required this.image,
    required this.title,
  });
  final String continent;
  final String image;
  final String title;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => DetailsScreen(
            title: title,
            continent: continent,
            image: image,
            description: "Ukrainian President Volodymyr Zelensky has accused European countries that continue to buy Russian oil ofearning their money in other people's blood",
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
            Text(continent, style: Theme.of(context).textTheme.bodySmall),
            Text(title, style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
      ),
    );
  }
}
