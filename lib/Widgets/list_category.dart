import 'package:flutter/material.dart';
import 'package:news_app/Widgets/category_card.dart';

class ListCategory extends StatelessWidget {
  const ListCategory({super.key});
  final List<String> categories = const [
    "business",
    "entertemaint",
    "health",
    "science",
    "sports",
    "technology",
    "general"
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Expanded(
        child: ListView(
            scrollDirection: Axis.horizontal,
            children: categories
                .map((e) =>
                    CategoryCard(categoryName: e.toString(), image: "$e.jpg"))
                .toList()),
      ),
    );
  }
}
