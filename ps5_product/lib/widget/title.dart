import 'package:flutter/material.dart';

class TitleBar extends StatelessWidget {
  final String text;

  const TitleBar({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final words = text.split(' ');

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: RichText(
        text: TextSpan(children: [
          TextSpan(
            text: words[0],
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 30,
              color: Colors.black,
            ),
          ),
          TextSpan(text: "\n"),
          TextSpan(
            text: words[1],
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 30,
              color: Colors.black,
            ),
          ),
        ]),
      ),
    );
  }
}