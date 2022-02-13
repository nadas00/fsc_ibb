import 'package:flutter/material.dart';
import 'package:fsc_ibb/widgets/common/style/common_gradient.dart';

class GradientMasker extends StatelessWidget {
  final Widget child;
  final bool active;

  const GradientMasker({Key key, this.child, this.active = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return active
        ? ShaderMask(
            shaderCallback: (Rect bounds) {
              return commonGradient.createShader(Offset.zero & bounds.size);
            },
            child: child,
          )
        : child;
  }
}
