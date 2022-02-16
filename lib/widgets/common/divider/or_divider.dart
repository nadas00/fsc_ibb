import 'package:flutter/material.dart';
import 'package:fsc_ibb/core/utils/extension/context/translation_context_extension.dart';

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
        Text(context.translation.or, style: Theme.of(context).textTheme.headline6),
        const SizedBox(width: 25),
        const Flexible(child: Divider(thickness: 2, color: Colors.white)),
        const SizedBox(width: 25),
      ],
    );
  }
}
