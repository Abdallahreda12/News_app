// ignore_for_file: must_be_immutable

part of 'news_cubit.dart';

@immutable
abstract class NewsState {}

final class NewsInitial extends NewsState {}

final class NewsLoading extends NewsState {}

final class Newsseccuss extends NewsState {

  
  final List<NewsModel>? newsList;

  Newsseccuss([this.newsList]);

}

final class NewsFaild extends NewsState {
  final String errorMessage;

  NewsFaild(this.errorMessage);
}
