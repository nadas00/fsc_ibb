import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fsc_ibb/widgets/common/play_button_widget/play_button_widget.dart';
import 'package:fsc_ibb/widgets/common/score_widget/score_widget.dart';

class ShowCard extends StatelessWidget {
  final String title;
  final String language;
  final String view;
  final double score;
  final String coverUrl;

  const ShowCard({
    Key key,
    @required this.title,
    @required this.language,
    @required this.view,
    @required this.score,
    @required this.coverUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: NetworkImage(coverUrl), fit: BoxFit.cover),
        color: Colors.yellow,
        borderRadius: BorderRadius.circular(45),
      ),
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
                      Row(
                        children: [
                          const SizedBox(width: 5),
                          Expanded(
                            child: Row(
                              children: [
                                Flexible(
                                  child: Text(
                                    title,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: Theme.of(context).textTheme.subtitle1,
                                  ),
                                ),
                                const SizedBox(width: 5),
                                Flexible(
                                  child: Text(
                                    " ($language)",
                                    style: Theme.of(context).textTheme.subtitle1,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Flexible(
                        child: Row(
                          children: [
                            Flexible(
                              child: ScoreWidget(score: score),
                            ),
                            const SizedBox(width: 5),
                            Flexible(
                              child: RichText(
                                  maxLines: 1,
                                  softWrap: false,
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: view,
                                        style: Theme.of(context).textTheme.subtitle1,
                                      ),
                                      TextSpan(
                                        text: " Views",
                                        style: Theme.of(context).textTheme.caption,
                                      )
                                    ],
                                  )),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const Positioned(
            bottom: 60,
            right: 25,
            child: PlayButtonWidget.square(),
          )
        ],
      ),
    );
  }
}
