import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fsc_ibb/widgets/show_cards/show_card_widget.dart';
import 'package:stacked/stacked.dart';
import 'detail_view_model.dart';

class DetailView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<DetailViewModel>.reactive(
      builder: (BuildContext context, DetailViewModel viewModel, Widget _) {
        return Scaffold(
          body: CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: MediaQuery.of(context).size.height * .5,
                flexibleSpace: FlexibleSpaceBar(
                  background: Stack(
                    fit: StackFit.expand,
                    alignment: Alignment.bottomCenter,
                    children: [
                      Image.network(
                        "https://static.remove.bg/remove-bg-web/d450d501f6500a09e72d0e306a5d62768359d9fa/assets/start_remove-c851bdf8d3127a24e2d137a55b1b427378cd17385b01aec6e59d5d4b5f39d2ec.png",
                        fit: BoxFit.cover,
                      ),
                      Container(
                        alignment: Alignment.bottomCenter,
                        height: MediaQuery.of(context).size.height * .5,
                        decoration: bottomVignetteDecoration,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(
                            height: 100,
                            child: Stack(
                              fit: StackFit.expand,
                              children: <Widget>[
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(50.0),
                                      topLeft: Radius.circular(50.0),
                                    ),
                                    child: BackdropFilter(
                                      filter: ImageFilter.blur(
                                        sigmaX: 5.0,
                                        sigmaY: 5.0,
                                      ),
                                      child: Container(
                                        padding: const EdgeInsets.all(16.0),
                                        color: Colors.white.withOpacity(0.2),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Container(
                                              height: 35,
                                              width: 35,
                                              decoration: const ShapeDecoration(shape: CircleBorder(), color: Colors.red),
                                            ),
                                            const SizedBox(width: 8),
                                            Text(
                                              "Watch Trailer",
                                              style: Theme.of(context).textTheme.bodyText1,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 25),
                          Text(
                            "Maleficent",
                            style: Theme.of(context).textTheme.headline5,
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text("Eng"),
                              SizedBox(
                                width: 15,
                              ),
                              Text("|"),
                              SizedBox(
                                width: 15,
                              ),
                              Text("Action"),
                              SizedBox(
                                width: 15,
                              ),
                              Text("|"),
                              SizedBox(
                                width: 15,
                              ),
                              Text("3h10m"),
                            ],
                          ),
                          const SizedBox(height: 25),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SliverFillRemaining(
                hasScrollBody: false,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 25),
                      Text(
                        "Story Line",
                        style: Theme.of(context).textTheme.headline5,
                      ),
                      const SizedBox(height: 25),
                      Text("story description " * 20),
                      const SizedBox(height: 25),
                      Text(
                        "Star Cast",
                        style: Theme.of(context).textTheme.headline5,
                      ),
                      const SizedBox(height: 25),
                      Row(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: const ShapeDecoration(shape: CircleBorder(), color: Colors.red),
                          ),
                          const SizedBox(width: 8),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Actor",
                                style: Theme.of(context).textTheme.caption,
                              ),
                              const SizedBox(height: 10),
                              const Text("Angelina Jolie"),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 25),
                      Text(
                        "Popular",
                        style: Theme.of(context).textTheme.headline5,
                      ),
                      const SizedBox(height: 25),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(children: const [
                          ShowCard(),
                          SizedBox(width: 25),
                          ShowCard(),
                        ]),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      },
      viewModelBuilder: () => DetailViewModel(),
    );
  }
}

BoxDecoration get bottomVignetteDecoration {
  return const BoxDecoration(
    gradient: LinearGradient(
      stops: [0.1, 1],
      begin: Alignment.bottomCenter,
      end: Alignment.topCenter,
      colors: [Colors.black, Colors.black12],
    ),
  );
}

extension SliverBoxAdapterExtension on Widget {
  SliverToBoxAdapter get toSliver => SliverToBoxAdapter(child: this);
}
