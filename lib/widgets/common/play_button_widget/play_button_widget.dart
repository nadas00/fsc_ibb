import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fsc_ibb/widgets/common/style/common_gradient.dart';
import 'package:fsc_ibb/widgets/utils/gradient_masker.dart';

enum PlayButtonType { rounded, square, roundedBlurred }

class PlayButtonWidget extends StatelessWidget {
  final PlayButtonType _playButtonType;
  const PlayButtonWidget.square({
    Key key,
  })  : _playButtonType = PlayButtonType.square,
        super(key: key);
  const PlayButtonWidget.rounded({
    Key key,
  })  : _playButtonType = PlayButtonType.rounded,
        super(key: key);
  const PlayButtonWidget.roundedBlurred({
    Key key,
  })  : _playButtonType = PlayButtonType.roundedBlurred,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget widget;
    switch (_playButtonType) {
      case PlayButtonType.rounded:
        widget = Container(
          decoration: const ShapeDecoration(
            color: Colors.white,
            shape: CircleBorder(),
          ),
          child: const GradientMasker(
              active: true,
              child: Icon(
                Icons.play_arrow_rounded,
                size: 30,
              )),
          width: 35,
          height: 35,
        );
        break;
      case PlayButtonType.square:
        widget = Container(
          decoration: const ShapeDecoration(
            color: Colors.white,
            shape: ContinuousRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(25))),
          ),
          alignment: Alignment.center,
          height: 35,
          width: 35,
          child: Container(
            decoration: ShapeDecoration(
              gradient: commonGradient,
              shape: const CircleBorder(),
            ),
            child: const Icon(Icons.play_arrow_rounded),
            width: 25,
            height: 25,
          ),
        );
        break;
      case PlayButtonType.roundedBlurred:
        widget = ClipOval(
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 5.0,
              sigmaY: 5.0,
            ),
            child: Container(
              padding: const EdgeInsets.all(8.0),
              color: Colors.grey.withOpacity(0.5),
              child: Container(
                decoration: const ShapeDecoration(
                  color: Colors.white,
                  shape: CircleBorder(),
                ),
                child: const GradientMasker(
                  active: true,
                  child: Icon(
                    Icons.play_arrow_rounded,
                    size: 30,
                  ),
                ),
              ),
            ),
          ),
        );
        break;
    }
    return widget;
  }
}
