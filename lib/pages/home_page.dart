import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/Widgets/list_category.dart';
import 'package:news_app/Widgets/list_news.dart';
import 'package:news_app/cubit/news_cubit.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> country = [
      "Egypt",
      "United States",
      "United Kingdom",
      "France",
      "Germany",
      "Italy",
      "Japan",
      "Spain",
      "Brazil",
      "Canada",
      "Australia",
      "China",
    ];

    return Scaffold(
      appBar: AppBar(
        actions: [
          SizedBox(
            width: 110,
            child: DropdownButton<String>(
              iconSize: 50,
              isExpanded: true,
              style: const TextStyle(color: Colors.orangeAccent),
              underline: Container(),
              icon: const IconTheme(
                  data: IconThemeData(),
                  child: Text(
                    "Country",
                    style: TextStyle(fontSize: 16),
                  )),
              items: country.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (e) {
                String country = getCountry(e);
                BlocProvider.of<NewsCubit>(context).getNews(country: country);
              },
            ),
          )
        ],
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: const Row(mainAxisAlignment: MainAxisAlignment.end, children: [
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

  String getCountry(String? e) {
    String ret = '';
    Map<String, String> country = {
      "Egypt": "eg",
      "United States": "us",
      "United Kingdom": "gb",
      "France": "fr",
      "Germany": "de",
      "Italy": "it",
      "Japan": "jp",
      "Spain": "es",
      "Brazil": "br",
      "Canada": "ca",
      "Australia": "au",
      "China": "cn",
    };
    country.forEach((key, value) {
      if (key == e) {
        ret = value;
      }
    });
    return ret;
  }
}
