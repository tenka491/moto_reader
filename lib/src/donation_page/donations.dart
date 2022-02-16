import 'package:flutter/material.dart';
import 'package:flutter_start_app/src/donation_page/donation_icons_list.dart';
import 'package:flutter_start_app/src/donation_page/social_media.dart';

class Donations extends StatelessWidget {
  const Donations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const TextStyle optionStyle =
        TextStyle(fontSize: 18, fontWeight: FontWeight.w500, height: 1.7);
    const edgeInsets = EdgeInsets.fromLTRB(0, 20, 0, 0);

    const paragraphText = '''
Thanks for downloading my App. Please consider making a donation, it would be greatly appreciated.''';

    const text = Text(
      "Find me on Social Media:",
      style: optionStyle,
    );

    var children2 = [
      Row(children: const [Text("Hi Reader,", style: optionStyle)]),
      const Text(paragraphText, style: optionStyle),
      const Padding(padding: edgeInsets, child: DonationIconsList()),
      Padding(padding: edgeInsets, child: Row(children: const [text])),
      const Padding(padding: edgeInsets, child: SocialMedia()),
    ];

    return Padding(
      padding: const EdgeInsets.all(30),
      child: Column(children: children2),
    );
  }
}
