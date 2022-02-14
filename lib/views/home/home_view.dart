import 'package:flutter/material.dart';
import 'package:fsc_ibb/core/locator.dart';
import 'package:fsc_ibb/model/show/show_model.dart';
import 'package:fsc_ibb/widgets/category_menu_item/category_menu_item.dart';
import 'package:fsc_ibb/widgets/common/bottom_navigation_bar/bottom_navigation_bar.dart';
import 'package:fsc_ibb/widgets/common/stream_section_header/stream_section_header_widget.dart';
import 'package:fsc_ibb/widgets/common/style/common_gradient.dart';
import 'package:fsc_ibb/widgets/show_cards/carousel_show_card_widget.dart';
import 'package:fsc_ibb/widgets/show_cards/show_card_widget.dart';
import 'package:fsc_ibb/widgets/utils/gradient_masker.dart';
import 'package:stacked/stacked.dart';
import 'home_view_model.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      onModelReady: (model) {
        model.getPopularStreams();
        model.getYouMayLikeStreams();
      },
      builder: (BuildContext context, HomeViewModel viewModel, Widget _) {
        return Scaffold(
          appBar: AppBar(
            leading: const Icon(Icons.menu),
            actions: const [
              Icon(Icons.notifications),
              SizedBox(
                width: 25,
              ),
              Icon(Icons.more_horiz)
            ],
          ),
          body: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Flexible(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Search movie, series...',
                              fillColor: Colors.white12,
                              filled: true,
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          child: const Icon(Icons.search),
                          decoration: ShapeDecoration(
                            gradient: commonGradient,
                            shape: const ContinuousRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(25))),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: const [
                          CategoryMenuItem(
                            isSelected: true,
                            title: 'All',
                          ),
                          CategoryMenuItem(
                            isSelected: false,
                            title: 'Web Show',
                          ),
                          CategoryMenuItem(
                            isSelected: false,
                            title: 'Bollywood',
                          ),
                          CategoryMenuItem(
                            isSelected: false,
                            title: 'Hollywood',
                          ),
                          CategoryMenuItem(
                            isSelected: false,
                            title: 'Buzz videos',
                          ),
                        ],
                      ),
                    ),
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
                        : SizedBox(
                            height: 200,
                            child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                ShowModel currentShowModel = viewModel.popularStreams[index];
                                return ShowCard(
                                  showModel: currentShowModel,
                                );
                              },
                              separatorBuilder: (context, index) {
                                return const SizedBox(width: 25);
                              },
                              itemCount: viewModel?.popularStreams?.length ?? 0,
                            ),
                          ),
                    const SizedBox(height: 25),
                    const StreamSectionHeader(title: "You may like"),
                    const SizedBox(height: 25),
                    viewModel.busy(viewModel.youMayLikeStreams)
                        ? const CircularProgressIndicator.adaptive()
                        : SizedBox(
                            height: 200,
                            child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                ShowModel currentShowModel = viewModel.youMayLikeStreams[index];
                                return ShowCard(
                                  showModel: currentShowModel,
                                );
                              },
                              separatorBuilder: (context, index) {
                                return const SizedBox(width: 25);
                              },
                              itemCount: viewModel?.youMayLikeStreams?.length ?? 0,
                            ),
                          ),
                    SizedBox(height: MediaQuery.of(context).viewPadding.bottom + 125),
                  ],
                ),
              ),
              const BlurredBottomNavigationBar(),
            ],
          ),
        );
      },
      viewModelBuilder: () => locator<HomeViewModel>(),
    );
  }
}
