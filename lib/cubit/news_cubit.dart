import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:http/http.dart' as http;
import '../models/news_model.dart';

part 'news_state.dart';

class NewsCubit extends Cubit<NewsState> {
  NewsCubit() : super(NewsInitial());

  getNews({
    String categoryName = 'general',
    String? country,
  }) async {
    List<NewsModel> newsList = [];
    String apiKey = "926a0bf189f622fb033e24281e8b6b77";
    String? Country = country;
    emit(NewsLoading());
    try {
      Uri url = Uri.parse(
          'https://gnews.io/api/v4/top-headlines?category=$categoryName&country=$Country&apikey=$apiKey');

      http.Response response = await http.get(url);

      Map<String, dynamic> apidata = await jsonDecode(response.body);
      List<dynamic> data = apidata['articles'];

      for (var i = 0; i < data.length; i++) {
        newsList.add(
          NewsModel.fromJson(data[i]),
        );
      }
      emit(Newsseccuss(newsList));
    } on Exception catch (e) {
      emit(NewsFaild(e.toString()));
    }
  }
}
