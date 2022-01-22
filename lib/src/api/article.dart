class Article {
  final String title;
  final String url;

  Article({
   required this.title,
   required this.url,
  });

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
        title: json['title'],
        url: json['url']
      );
  }
}