import 'package:flutter/material.dart';

import 'news_card.dart';

class ListNews extends StatelessWidget {
  const ListNews({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: 5,
        (context, index) {
          return const Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: NewsCard(),
          );
        },
      ),
    );
  }
}
