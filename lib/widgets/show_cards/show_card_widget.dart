import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fsc_ibb/views/home/home_view.dart';
import 'package:fsc_ibb/widgets/common/style/common_gradient.dart';

class ShowCard extends StatelessWidget {
  const ShowCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
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
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25), bottomRight: Radius.circular(25)),
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 15.0,
                  sigmaY: 15.0,
                ),
                child: Container(
                  width: MediaQuery.of(context).size.width - 25,
                  padding: const EdgeInsets.all(16.0),
                  color: Colors.grey.withOpacity(0.5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        children: [
                          SizedBox(width: 5),
                          Expanded(
                            child: Row(
                              children: [
                                Flexible(
                                  child: Text(
                                    "Avatar",
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: Theme.of(context).textTheme.subtitle1,
                                  ),
                                ),
                                const SizedBox(width: 5),
                                Flexible(
                                  child: Text(
                                    " (Eng)",
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
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.star_border_outlined,
                                    color: Colors.yellow,
                                  ),
                                  SizedBox(width: 2),
                                  Flexible(
                                    child: Text(
                                      "4.5",
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: Theme.of(context).textTheme.subtitle1,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Flexible(
                              child: RichText(
                                  maxLines: 1,
                                  softWrap: false,
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "50M+",
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
          Positioned(
            bottom: 60,
            right: 25,
            child: Container(
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
            ),
          )
        ],
      ),
    );
  }
}
