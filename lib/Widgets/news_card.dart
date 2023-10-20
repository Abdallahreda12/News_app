import 'package:flutter/material.dart';
import 'package:news_app/models/news_model.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({super.key, required this.news});
  final NewsModel news;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            news.image,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, top: 8),
          child: Text(
            news.title,
            style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
            maxLines: 2,
            overflow: TextOverflow.visible,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, top: 3),
          child: Text(
            news.description,
            style: const TextStyle(
                fontSize: 18, fontWeight: FontWeight.w400, color: Colors.grey),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        )
      ],
    );
  }
}
