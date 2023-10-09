import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 200,
        height: 120,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          image: const DecorationImage(
              image: AssetImage('assets/technology.jpeg'),
              fit: BoxFit.fill,
              opacity: 0.7),
        ),
        child: const Center(
            child: Text(
          "Category",
          style: TextStyle(
              color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),
        )));
  }
}
