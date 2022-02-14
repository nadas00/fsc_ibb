import 'package:flutter/material.dart';
import 'package:fsc_ibb/core/locator.dart';
import 'package:fsc_ibb/core/router_constants.dart';
import 'package:fsc_ibb/model/show/show_model.dart';
import 'package:fsc_ibb/widgets/common/play_button_widget/play_button_widget.dart';
import 'package:fsc_ibb/widgets/common/score_widget/score_widget.dart';
import 'package:stacked_services/stacked_services.dart';

class CarouselShowCard extends StatelessWidget {
  final ShowModel showModel;

  const CarouselShowCard({
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
        padding: const EdgeInsets.only(bottom: 15, right: 25, left: 25),
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage(showModel.coverUrl), fit: BoxFit.cover),
          color: Colors.white.withOpacity(.1),
          borderRadius: BorderRadius.circular(45),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  showModel.title,
                  style: Theme.of(context).textTheme.headline5,
                ),
                ScoreWidget(score: showModel.score),
              ],
            ),
            const PlayButtonWidget.roundedBlurred()
          ],
        ),
        height: 200,
      ),
    );
  }
}
