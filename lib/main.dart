import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/bloc_observer.dart';
import 'package:news_app/pages/home_page.dart';
import 'package:news_app/pages/news_page.dart';

import 'cubit/news_cubit.dart';

void main() {
  runApp(const MyApp());

  Bloc.observer = SimpleBlocObserver();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewsCubit(),
      child: MaterialApp(
        routes: {
          'newsPage': (context) => const NewsPage(),
          'homePage': (context) => const HomePage()
        },
        debugShowCheckedModeBanner: false,
        initialRoute: 'homePage',
      ),
    );
  }
}
