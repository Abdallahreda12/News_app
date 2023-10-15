class NewsModel {
  final String title;
  final String description;
  final String content;
  final String url;
  final String image;
  final String publishedAt;

  NewsModel(
      {required this.title,
      required this.description,
      required this.content,
      required this.url,
      required this.image,
      required this.publishedAt});

  factory NewsModel.fromJson(jsonData) {
    return NewsModel(
      title: jsonData['title'],
      description: jsonData['title'],
      content: jsonData['price'],
      url: jsonData['description'],
      image: jsonData["category"],
      publishedAt: jsonData['image'],
    );
  }
}
