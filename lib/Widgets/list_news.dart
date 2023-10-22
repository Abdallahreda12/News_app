import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/cubit/news_cubit.dart';

import 'news_card.dart';

class ListNews extends StatefulWidget {
  const ListNews({super.key});

  @override
  State<ListNews> createState() => _ListNewsState();
}

class _ListNewsState extends State<ListNews> {
  @override
  void initState() {
    BlocProvider.of<NewsCubit>(context).getNews();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsCubit, NewsState>(
      builder: (context, state) {
        if (state is Newsseccuss) {
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: state.newsList?.length,
              (context, index) {
                return Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, 'newsPage', arguments: {
                            'title': state.newsList?[index].title,
                            'description': state.newsList?[index].description,
                            'content': state.newsList?[index].content,
                            'url': state.newsList?[index].url,
                            'image': state.newsList?[index].image,
                            'publishedAt': state.newsList?[index].publishedAt,
                          });
                        },
                        child: NewsCard(news: state.newsList![index])));
              },
            ),
          );
        } else {
          return const SliverToBoxAdapter(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
