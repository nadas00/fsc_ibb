import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fsc_ibb/core/locator.dart';
import 'package:fsc_ibb/core/router_constants.dart';
import 'package:fsc_ibb/model/show/show_model.dart';
import 'package:fsc_ibb/widgets/common/play_button_widget/play_button_widget.dart';
import 'package:fsc_ibb/widgets/common/score_widget/score_widget.dart';
import 'package:stacked_services/stacked_services.dart';

part 'parts/score_and_view.dart';
part 'parts/title_and_language.dart';

class ShowCard extends StatelessWidget {
  final ShowModel showModel;

  const ShowCard({
    Key key,
    @required this.showModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        locator<NavigationService>().clearTillFirstAndShow(detailViewRoute, arguments: showModel);
      },
      child: Container(
        decoration: networkImageDecoration,
        height: 200,
        width: 200,
        child: Stack(
          fit: StackFit.expand,
          alignment: Alignment.bottomCenter,
          children: <Widget>[
            Align(
              alignment: Alignment.bottomCenter,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(25), bottomRight: Radius.circular(25)),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 5.0,
                    sigmaY: 5.0,
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width - 25,
                    padding: const EdgeInsets.all(16.0),
                    color: Colors.grey.withOpacity(0.1),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        _TitleAndLanguage(showModel: showModel),
                        _ScoreAndViews(showModel: showModel),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const Positioned(bottom: 60, right: 25, child: PlayButtonWidget.square())
          ],
        ),
      ),
    );
  }

  BoxDecoration get networkImageDecoration {
    return BoxDecoration(
      image: DecorationImage(image: NetworkImage(showModel.coverUrl), fit: BoxFit.cover),
      color: Colors.white.withOpacity(.1),
      borderRadius: BorderRadius.circular(45),
    );
  }
}
