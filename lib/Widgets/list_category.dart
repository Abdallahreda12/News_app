import 'package:flutter/material.dart';
import 'package:news_app/Widgets/category_card.dart';

class ListCategory extends StatelessWidget {
  const ListCategory({super.key});
  final List<String> categories = const [
    "general",
    "business",
    "entertemaint",
    "health",
    "science",
    "sports",
    "technology",
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView(
          scrollDirection: Axis.horizontal,
          children: categories
              .map((e) =>
                  CategoryCard(categoryName: e.toString(), image: "$e.jpg"))
              .toList()),
    );
  }
}
