class NewsModels {
  final String title;
  final String urlToImage;

  NewsModels({required this.title, required this.urlToImage});
  factory NewsModels.fromJson(Map<String, dynamic>json) {
    return NewsModels(
      title: json ['title'] ?? '',
      urlToImage: json ['urlToImage'] ?? 'https://placehold.co/600x400/ff0000/ffffff?text=ERROR',
    );

  }
}