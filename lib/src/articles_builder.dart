import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_start_app/src/articles_list.dart';

import '../src/api/article.dart';
import '../src/api/fetch.dart';

class ArticlesBuilder extends StatefulWidget {
  const ArticlesBuilder({Key? key}) : super(key: key);

  @override
  State<ArticlesBuilder> createState() => _ArticlesBuilderState();
}

class _ArticlesBuilderState extends State<ArticlesBuilder> {
  final Future<List<Article>> _futureArticles = Future<List<Article>>.delayed(
    const Duration(seconds: 3),
    () => fetchAllArticles(),
  );

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Article>>(
      future: _futureArticles,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return ArticlesList(articles: snapshot.data!);
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
