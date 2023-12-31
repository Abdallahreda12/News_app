import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/Widgets/category_card.dart';
import 'package:news_app/cubit/news_cubit.dart';

class ListCategory extends StatefulWidget {
  const ListCategory({
    super.key,
    this.onTap,
  });
  final void Function(String category)? onTap;
  @override
  State<ListCategory> createState() => _ListCategoryState();
}

class _ListCategoryState extends State<ListCategory> {
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
              .map(
                (e) => GestureDetector(
                  onTap: () {
                    BlocProvider.of<NewsCubit>(context).categoryName = e;
                    BlocProvider.of<NewsCubit>(context).getNews();
                  },
                  child:
                      CategoryCard(categoryName: e.toString(), image: "$e.jpg"),
                ),
              )
              .toList()),
    );
  }
}
