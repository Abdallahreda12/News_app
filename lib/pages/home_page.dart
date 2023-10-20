import 'package:flutter/material.dart';
import 'package:news_app/Widgets/list_category.dart';
import 'package:news_app/Widgets/list_news.dart';

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
      body: const Padding(
        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: ListCategory()),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 20,
              ),
            ),
            ListNews(),
          ],
        ),
      ),
    );
  }
}
