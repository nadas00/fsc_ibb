import 'package:flutter/material.dart';
import 'package:fsc_ibb/widgets/common/text/topic_text.dart';
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
        TopicText(title),
        const GradientMasker(
          active: true,
          child: Icon(Icons.more_horiz, size: 35),
        )
      ],
    );
  }
}
