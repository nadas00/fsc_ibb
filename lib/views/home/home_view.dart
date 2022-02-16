import 'package:flutter/material.dart';
import 'package:fsc_ibb/core/locator.dart';
import 'package:fsc_ibb/model/show/show_model.dart';
import 'package:fsc_ibb/widgets/category_menu_item/category_menu_item.dart';
import 'package:fsc_ibb/widgets/common/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:fsc_ibb/widgets/common/stream_section_header/stream_section_header_widget.dart';
import 'package:fsc_ibb/widgets/common/style/common_gradient.dart';
import 'package:fsc_ibb/widgets/show_cards/carousel_show_card_widget.dart';
import 'package:fsc_ibb/widgets/show_cards/show_card_widget.dart';
import 'package:stacked/stacked.dart';
import 'home_view_model.dart';
import 'package:fsc_ibb/core/utils/extension/context/translation_context_extension.dart';

// Header Parts
part 'widget/parts/header/categories.dart';
part 'widget/parts/header/search_bar.dart';
// Stream Parts
part 'widget/parts/streams/popular_streams.dart';
part 'widget/parts/streams/you_may_like_streams.dart';
// AppBar
part 'widget/parts/home_appbar.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => locator<HomeViewModel>(),
      onModelReady: (model) {
        model.getPopularStreams();
        model.getYouMayLikeStreams();
      },
      builder: (BuildContext context, HomeViewModel viewModel, Widget _) {
        return Scaffold(
          appBar: const _HomeAppBar(),
          body: Stack(
            children: [
              _HomeBody(viewModel: viewModel),
              const BlurredBottomNavigationBar(),
            ],
          ),
        );
      },
    );
  }
}

class _HomeBody extends StatelessWidget {
  final HomeViewModel viewModel;
  const _HomeBody({Key key, this.viewModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const _SearchField(),
          const SizedBox(
            height: 25,
          ),
          const _Categories(),
          const SizedBox(height: 25),
          viewModel.busy(viewModel.popularStreams)
              ? const CircularProgressIndicator.adaptive()
              : CarouselShowCard(
                  showModel: viewModel.popularStreams.first,
                ),
          const SizedBox(height: 25),
          const StreamSectionHeader(title: "Popular"),
          const SizedBox(height: 25),
          viewModel.busy(viewModel.popularStreams)
              ? const CircularProgressIndicator.adaptive()
              : _PopularStreams(
                  viewModel: viewModel,
                ),
          const SizedBox(height: 25),
          const StreamSectionHeader(title: "You may like"),
          const SizedBox(height: 25),
          viewModel.busy(viewModel.youMayLikeStreams)
              ? const CircularProgressIndicator.adaptive()
              : _YouMayLikeStreams(
                  viewModel: viewModel,
                ),
          SizedBox(height: MediaQuery.of(context).viewPadding.bottom + 125),
        ],
      ),
    );
  }
}
