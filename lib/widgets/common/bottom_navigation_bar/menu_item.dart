import 'package:flutter/material.dart';
import 'package:fsc_ibb/widgets/utils/gradient_masker.dart';

class MenuItem extends StatelessWidget {
  const MenuItem({
    Key key,
    this.title,
    this.icon,
    this.isSelected = false,
  }) : super(key: key);

  final String title;
  final IconData icon;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        GradientMasker(
          active: isSelected,
          child: Icon(icon),
        ),
        const SizedBox(height: 8),
        GradientMasker(
          active: isSelected,
          child: Text(
            title,
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ),
      ],
    );
  }
}
