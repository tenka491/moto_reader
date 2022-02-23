import 'package:flutter/material.dart';
import 'package:flutter_start_app/src/about_page/donation_icons_list.dart';
import 'package:flutter_start_app/src/about_page/social_media.dart';

class Donations extends StatelessWidget {
  const Donations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const TextStyle optionStyle =
        TextStyle(fontSize: 16, fontWeight: FontWeight.w500, height: 1.7);
    const edgeInsets = EdgeInsets.fromLTRB(0, 20, 0, 0);

    const paragraphText = '''
Thanks for downloading my App. As a solo developer building things that I like, it means a great deal that you took the time to try out my App. If you want to find out more about me check me out on social media. 
''';
    const paragraphText2 = '''
Please consider making a donation, it would be greatly appreciated.
    ''';
    const text = Text(
      "Find me on Social Media:",
      style: optionStyle,
    );

    var children2 = [
      Row(children: const [Text("Hi Reader,", style: optionStyle)]),
      const Text(paragraphText, style: optionStyle),
      Row(children: const [text]),
      const Padding(padding: edgeInsets, child: SocialMedia()),
      const Padding(
          padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
          child: Text(paragraphText2, style: optionStyle)),
      const Padding(
          padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
          child: DonationIconsList()),
    ];

    return Padding(
      padding: const EdgeInsets.all(30),
      child: Column(children: children2),
    );
  }
}
