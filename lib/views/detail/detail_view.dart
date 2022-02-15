import 'dart:developer';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fsc_ibb/model/show/show_model.dart';
import 'package:fsc_ibb/widgets/common/play_button_widget/play_button_widget.dart';
import 'package:fsc_ibb/widgets/show_cards/show_card_widget.dart';
import 'package:fsc_ibb/widgets/star_cast/star_cast_widget.dart';
import 'package:fsc_ibb/widgets/utils/gradient_masker.dart';
import 'package:stacked/stacked.dart';
import 'detail_view_model.dart';

class DetailView extends StatelessWidget {
  const DetailView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var currentShowModel = ModalRoute.of(context).settings.arguments as ShowModel;
    if (currentShowModel == null) {
      log("null");
      currentShowModel = ShowModel.sample1();
    }

    return ViewModelBuilder<DetailViewModel>.reactive(
      onModelReady: (model) {
        model.setShowModel(currentShowModel);
        model.getCastModels();
        model.getStoryLine();
      },
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
                        currentShowModel.coverUrl,
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
                                            const PlayButtonWidget.rounded(),
                                            const SizedBox(width: 8),
                                            GradientMasker(
                                              active: true,
                                              child: Text(
                                                "Watch Trailer",
                                                style: Theme.of(context).textTheme.bodyText1,
                                              ),
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
                            currentShowModel.title,
                            style: Theme.of(context).textTheme.headline5,
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(currentShowModel.language),
                              Text(" | "),
                              Text(currentShowModel.detailModel.category.split(", ").join(" | ")),
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
                      viewModel.busy(viewModel.storyLine) ? const CircularProgressIndicator.adaptive() : Text(viewModel.storyLine),
                      const SizedBox(height: 25),
                      Text(
                        "Star Cast",
                        style: Theme.of(context).textTheme.headline5,
                      ),
                      const SizedBox(height: 25),
                      viewModel.busy(viewModel.castModels)
                          ? const CircularProgressIndicator.adaptive()
                          : SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: List.generate(
                                  viewModel.castModels.length,
                                  (index) => Padding(
                                    padding: const EdgeInsets.only(right: 16.0),
                                    child: CastWidget(castModel: viewModel.castModels[index]),
                                  ),
                                ),
                              ),
                            ),
                      const SizedBox(height: 25),
                      Text(
                        "Recommended",
                        style: Theme.of(context).textTheme.headline5,
                      ),
                      const SizedBox(height: 25),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: List.generate(
                            3,
                            (index) {
                              final recomendedModel = currentShowModel.getRecomended(currentShowModel.id);
                              return Padding(
                                padding: const EdgeInsets.only(right: 16.0),
                                child: ShowCard(
                                  showModel: recomendedModel[index],
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                      const SizedBox(height: 50),
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
