import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fsc_ibb/widgets/common/style/common_gradient.dart';
import 'package:fsc_ibb/widgets/utils/gradient_masker.dart';

part 'variants/rounded_blurred_play_button.dart';
part 'variants/rounded_play_button.dart';
part 'variants/square_play_button.dart';

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
        widget = const _RoundedPlayButton();
        break;
      case PlayButtonType.square:
        widget = const _SquarePlayButton();
        break;
      case PlayButtonType.roundedBlurred:
        widget = const _RoundedBlurredPlayButton();
        break;
    }
    return widget;
  }
}
