import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/cubit/news_cubit.dart';

import 'news_card.dart';

class ListNews extends StatelessWidget {
  const ListNews({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NewsCubit, NewsState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is Newsseccuss) {
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: state.newsList.length,
              (context, index) {
                return Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: NewsCard(news: state.newsList[index]));
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
