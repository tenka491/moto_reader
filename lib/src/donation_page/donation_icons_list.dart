import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome5_icons.dart';

class DonationIconsList extends StatelessWidget {
  const DonationIconsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        Icon(
          FontAwesome5.coffee,
          size: 30,
        ),
        Icon(
          FontAwesome5.patreon,
          size: 30,
        ),
        Icon(
          FontAwesome5.paypal,
          size: 30,
        ),
      ],
    ));
  }
}
