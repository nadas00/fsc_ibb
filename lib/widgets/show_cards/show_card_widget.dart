import 'package:flutter/material.dart';

class ShowCard extends StatelessWidget {
  const ShowCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.circular(45),
      ),
      height: 200,
      width: 200,
    );
  }
}
