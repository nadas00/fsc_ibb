import 'package:flutter/material.dart';
import 'package:fsc_ibb/widgets/common/play_button_widget/play_button_widget.dart';
import 'package:fsc_ibb/widgets/common/score_widget/score_widget.dart';

class CarouselShowCard extends StatelessWidget {
  final String coverUrl;
  final String title;
  final double score;
  const CarouselShowCard({
    Key key,
    this.coverUrl,
    this.title,
    this.score,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 15, right: 25, left: 25),
      alignment: Alignment.bottomCenter,
      decoration: BoxDecoration(
        image: DecorationImage(image: NetworkImage(coverUrl), fit: BoxFit.cover),
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
                title,
                style: Theme.of(context).textTheme.headline5,
              ),
              ScoreWidget(score: score),
            ],
          ),
          const PlayButtonWidget.roundedBlurred()
        ],
      ),
      height: 200,
    );
  }
}
