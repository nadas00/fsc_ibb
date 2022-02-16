import 'package:flutter/material.dart';

class TopicText extends StatelessWidget {
  final String text;
  const TopicText(
    this.text, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.headline5,
    );
  }
}
