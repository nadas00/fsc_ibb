import 'package:flutter/material.dart';
import 'package:fsc_ibb/widgets/utils/gradient_masker.dart';

class StreamSectionHeader extends StatelessWidget {
  final String title;
  const StreamSectionHeader({
    Key key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headline5,
        ),
        const GradientMasker(
          active: true,
          child: Icon(Icons.more_horiz, size: 35),
        )
      ],
    );
  }
}
