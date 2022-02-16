import 'package:flutter/material.dart';

class SocialMedia extends StatelessWidget {
  const SocialMedia({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: const [
      Text("Twitter"),
      Text("YouTube"),
      Text("Instagram"),
      Text("Tumblr"),
      Text("GitHub"),
    ]);
  }
}
