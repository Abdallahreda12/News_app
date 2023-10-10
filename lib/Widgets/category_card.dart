import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard(
      {super.key, required this.categoryName, required this.image});

  final String categoryName;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      width: 200,
      height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(
            image: AssetImage('assets/$image'),
            fit: BoxFit.fill,
            opacity: 0.7,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.9), BlendMode.color)),
      ),
      child: Center(
        child: Text(
          categoryName,
          style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              letterSpacing: 1),
        ),
      ),
    );
  }
}
