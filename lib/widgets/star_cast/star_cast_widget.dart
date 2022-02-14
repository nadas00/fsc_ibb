import 'package:flutter/material.dart';
import 'package:fsc_ibb/model/show/cast_model.dart';

class CastWidget extends StatelessWidget {
  final CastModel castModel;
  const CastWidget({
    Key key,
    @required this.castModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: ShapeDecoration(
            shape: const CircleBorder(),
            color: Colors.white.withOpacity(.1),
            image: DecorationImage(
              image: NetworkImage(castModel.url),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(width: 8),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              castModel.jobTitle,
              style: Theme.of(context).textTheme.caption,
            ),
            const SizedBox(height: 10),
            Text(castModel.name),
          ],
        ),
      ],
    );
  }
}
