import 'package:flutter/material.dart';

void main() => runApp(ArticleCard());

class ArticleCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: const Center(
        child: Text(
          'IT WORKED!',
          textAlign: TextAlign.center,
          ),
      ),
    );
  }
}