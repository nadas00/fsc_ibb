import 'dart:developer';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:fsc_ibb/model/show/cast_model.dart';
import 'package:fsc_ibb/model/show/show_model.dart';
import 'package:fsc_ibb/widgets/common/play_button_widget/play_button_widget.dart';
import 'package:fsc_ibb/widgets/show_cards/show_card_widget.dart';
import 'package:fsc_ibb/widgets/star_cast/star_cast_widget.dart';
import 'package:fsc_ibb/widgets/utils/gradient_masker.dart';
import 'package:stacked/stacked.dart';
import 'detail_view_model.dart';

// Header Parts
part 'widgets/parts/header/header_background.dart';
part 'widgets/parts/header/header_content.dart';
// Recomended List
part 'widgets/parts/recomended_list.dart';
// Casts List
part 'widgets/parts/casts_list.dart';
// Detail Topic
part 'widgets/parts/detail_topic.dart';

class DetailView extends StatelessWidget {
  const DetailView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var currentShowModel = ModalRoute.of(context).settings.arguments as ShowModel;
    if (currentShowModel == null) {
      log("Current Show Model Recieved null");
      currentShowModel = ShowModel.sample1();
    }

    return ViewModelBuilder<DetailViewModel>.reactive(
      viewModelBuilder: () => DetailViewModel(),
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
                      _HeaderBackground(currentShowModel: currentShowModel),
                      _HeaderContent(currentShowModel: currentShowModel),
                    ],
                  ),
                ),
              ),
              SliverFillRemaining(
                hasScrollBody: false,
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 25),
                      const _DetailTopic("Sotry Line"),
                      const SizedBox(height: 25),
                      viewModel.busy(viewModel.storyLine) ? const CircularProgressIndicator.adaptive() : Text(viewModel.storyLine),
                      const SizedBox(height: 25),
                      const _DetailTopic("Star Cast"),
                      const SizedBox(height: 25),
                      viewModel.busy(viewModel.castModels) ? const CircularProgressIndicator.adaptive() : _CastList(castModelList: viewModel.castModels),
                      const SizedBox(height: 25),
                      const _DetailTopic("Recomended"),
                      const SizedBox(height: 25),
                      _RecomendedList(currentShowModel: currentShowModel),
                      const SizedBox(height: 50),
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
