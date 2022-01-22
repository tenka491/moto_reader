import 'package:flutter/material.dart';
import 'package:flutter_start_app/src/article_tile.dart';

import 'api/article.dart';

class ArticlesList extends StatelessWidget {
  final List<Article> articles;

  const ArticlesList({Key? key, required this.articles}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Center(
        child: ListView.builder(
            itemCount: articles.length,
            itemBuilder: (context, index) {
              final item = articles[index];
              return ArticleTile(article: item);
            }),
      ),
    );
  }
}
