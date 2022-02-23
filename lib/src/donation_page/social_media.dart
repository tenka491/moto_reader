import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';

class SocialMedia extends StatelessWidget {
  const SocialMedia({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          Icon(
            FontAwesome5.twitter_square,
            size: 30,
          ),
          Icon(
            FontAwesome5.youtube_square,
            size: 30,
          ),
          Icon(
            FontAwesome5.instagram_square,
            size: 30,
          ),
          Icon(
            FontAwesome5.tumblr_square,
            size: 30,
          ),
          Icon(
            FontAwesome5.github_square,
            size: 30,
          ),
        ]);
  }
}
