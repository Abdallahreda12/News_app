import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Map? news = ModalRoute.of(context)!.settings.arguments as Map?;
    final DateTime date = DateTime.parse(news?['publishedAt']);
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 50,
        iconTheme: const IconThemeData(color: Colors.orangeAccent, size: 30),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Row(mainAxisSize: MainAxisSize.min, children: [
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
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        child: ListView(children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              news!['image'],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 30),
            child: Text(
              "Title:",
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.grey,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.normal,
                  letterSpacing: 1),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, top: 8),
            child: Text(
              news['title'],
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              overflow: TextOverflow.visible,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 30),
            child: Text(
              "Description:",
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.grey,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.normal,
                  letterSpacing: 1),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, top: 8),
            child: Text(
              news['description'],
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 30),
            child: Text(
              "content:",
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.grey,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.normal,
                  letterSpacing: 1),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, top: 8),
            child: Text(
              "${news['content']}.",
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, top: 10),
            child: Linkify(
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 20,
                ),
                onOpen: (link) => launchUrl(Uri.parse(news['url'])),
                text: "Read More :${news['url']}"),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 30),
            child: Text(
              "Publish At:",
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.grey,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.normal,
                  letterSpacing: 1),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, top: 10),
            child: Text(
              '${date.year} / ${date.month} / ${date.day}',
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          )
        ]),
      ),
    );
  }
}
