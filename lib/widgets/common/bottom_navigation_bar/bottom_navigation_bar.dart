import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fsc_ibb/widgets/common/bottom_navigation_bar/menu_item.dart';
import 'package:fsc_ibb/core/utils/extension/context/translation_context_extension.dart';

class BlurredBottomNavigationBar extends StatelessWidget {
  const BlurredBottomNavigationBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewPadding.bottom + 25),
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Align(
              alignment: Alignment.bottomCenter,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 5.0,
                    sigmaY: 5.0,
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width - 25,
                    padding: const EdgeInsets.all(16.0),
                    color: Colors.grey.withOpacity(0.2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        MenuItem(icon: Icons.home, title: context.translation.home, isSelected: true),
                        MenuItem(icon: Icons.play_arrow, title: context.translation.live_tv),
                        MenuItem(icon: Icons.gamepad, title: context.translation.games),
                        MenuItem(icon: Icons.settings, title: context.translation.settings),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
