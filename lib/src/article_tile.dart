import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'api/article.dart';

class ArticleTile extends StatelessWidget {
  final Article article;

  const ArticleTile({Key? key, required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(10, 3, 3, 5),
        child: GestureDetector(
          onTap: () {
            _launchURL();
          },
          child: Center(
            child: ListTile(
              title: Text(article.title),
            ),
          ),
        ));
  }

  void _launchURL() async {
    if (!await launch(
      article.url,
      forceSafariVC: true,
      forceWebView: true,
    )) throw 'Could not launch $article.url';
  }
}
