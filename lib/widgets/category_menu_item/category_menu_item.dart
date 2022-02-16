import 'package:flutter/material.dart';
import 'package:fsc_ibb/widgets/common/style/common_gradient.dart';

class CategoryMenuItem extends StatelessWidget {
  final bool isSelected;
  final String title;
  const CategoryMenuItem({
    Key key,
    this.isSelected = false,
    @required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        gradient: isSelected ? commonGradient : null,
        shape: const ContinuousRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25)),
        ),
      ),
      margin: const EdgeInsets.only(right: 5),
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      alignment: Alignment.center,
      height: 40,
      child: Text(
        title,
        style: Theme.of(context).textTheme.bodyText1,
      ),
    );
  }
}
