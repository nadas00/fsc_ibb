
import 'package:flutter/material.dart';

class CategoryMenuItem extends StatelessWidget {
  const CategoryMenuItem({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 5),
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      alignment: Alignment.center,
      height: 40,
      color: Colors.red,
      child: const Text("asdasdasd"),
    );
  }
}
