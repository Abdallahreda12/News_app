import 'package:flutter/material.dart';


class NewsCard extends StatelessWidget {
  const NewsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            'https://th.bing.com/th/id/OIP.wPAO9Ciq-gtRWEG5NYaFswHaD4?pid=ImgDet&rs=1',
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 8.0, top: 8),
          child: Text(
            "title",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w400),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left: 8.0, top: 3),
          child: Text(
            "Description",
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w400, color: Colors.grey),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        )
      ],
    );
  }
}
