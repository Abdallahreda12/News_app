import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;

import '../models/news_model.dart';

part 'news_state.dart';

class NewsCubit extends Cubit<NewsState> {
  NewsCubit() : super(NewsInitial());

  getNews(String categoryName) async {
    String apiKey = "926a0bf189f622fb033e24281e8b6b77";
    String baseUrl = " https://gnews.io/api/v4/top-headlines?";
    List<NewsModel> newsList = [];

    emit(NewsLoading());
    try {
      //get data from http
      final dio = Dio();
      final response=dio.get(path)
      Map<String, dynamic> data = jsonDecode(response.body);

      for (var i = 0; i < data.length; i++) {
        newsList.add(
          NewsModel.fromJson(data["articles"][i]),
        );
      }
      emit(Newsseccuss(newsList));
    } on Exception catch (e) {
      emit(NewsFaild(e.toString()));
    }
  }
}
