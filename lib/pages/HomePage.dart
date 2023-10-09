import 'package:flutter/material.dart';
import 'package:news_app/Widgets/CategoryCard.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title:
              const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text(
              "News",
              style: TextStyle(color: Colors.black, fontSize: 25),
            ),
            Text(
              "Cloud",
              style: TextStyle(color: Colors.orangeAccent, fontSize: 25),
            )
          ]),
        ),
        body: const CategoryCard());
  }
}
