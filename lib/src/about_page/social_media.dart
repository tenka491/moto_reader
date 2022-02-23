import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class SocialMedia extends StatelessWidget {
  const SocialMedia({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      GestureDetector(
          onTap: () {
            _launchURL("https://twitter.com/shanetconnor");
          },
          child: const Icon(
            FontAwesome5.twitter_square,
            size: 30,
          )),
      GestureDetector(
          onTap: () {
            _launchURL(
                "https://www.youtube.com/channel/UCjIulnqd0UxBtYUkyK9T5vQ");
          },
          child: const Icon(
            FontAwesome5.youtube_square,
            size: 30,
          )),
      GestureDetector(
          onTap: () {
            _launchURL("https://www.instagram.com/shanetconnor/");
          },
          child: const Icon(
            FontAwesome5.instagram_square,
            size: 30,
          )),
      // GestureDetector(
      //     onTap: () {
      //       _launchURL("tumblr_url");
      //     },
      //     child: const Icon(
      //       FontAwesome5.tumblr_square,
      //       size: 30,
      //     )),
      GestureDetector(
          onTap: () {
            _launchURL("https://github.com/tenka491");
          },
          child: const Icon(
            FontAwesome5.github_square,
            size: 30,
          )),
    ]);
  }

  void _launchURL(url) async {
    if (!await launch(
      url,
      forceSafariVC: true,
      forceWebView: true,
      enableJavaScript: true,
    )) throw 'Could not launch $url';
  }
}
