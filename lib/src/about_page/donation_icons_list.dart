import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class DonationIconsList extends StatelessWidget {
  const DonationIconsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GestureDetector(
            onTap: () {
              _launchURL("https://ko-fi.com/shanetconnor");
            },
            child: const Icon(
              FontAwesome5.coffee,
              size: 30,
            )),
        GestureDetector(
            onTap: () {
              _launchURL("https://www.patreon.com/shanetconnor");
            },
            child: const Icon(
              FontAwesome5.patreon,
              size: 30,
            )),
        // GestureDetector(
        //     onTap: () {
        //       _launchURL("url");
        //     },
        //     child: const Icon(
        //       FontAwesome5.paypal,
        //       size: 30,
        //     )),
      ],
    ));
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
