import 'package:flutter/material.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(width: 25),
        const Flexible(child: Divider(thickness: 2, color: Colors.white)),
        const SizedBox(width: 25),
        Text("OR", style: Theme.of(context).textTheme.headline6),
        const SizedBox(width: 25),
        const Flexible(child: Divider(thickness: 2, color: Colors.white)),
        const SizedBox(width: 25),
      ],
    );
  }
}
