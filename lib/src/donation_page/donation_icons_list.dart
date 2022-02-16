import 'package:flutter/material.dart';

class DonationIconsList extends StatelessWidget {
  const DonationIconsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
      children: const [
        Text("Ko-fi"),
        Text("Patreon"),
        Text("PayPal"),
      ],
    ));
  }
}
