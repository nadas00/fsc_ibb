import 'package:flutter/material.dart';
import 'package:fsc_ibb/core/locator.dart';
import 'package:fsc_ibb/widgets/category_menu_item/category_menu_item.dart';
import 'package:fsc_ibb/widgets/show_cards/carousel_show_card_widget.dart';
import 'package:fsc_ibb/widgets/show_cards/show_card_widget.dart';
import 'package:stacked/stacked.dart';
import 'home_view_model.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      builder: (BuildContext context, HomeViewModel viewModel, Widget _) {
        return Scaffold(
          appBar: AppBar(
            leading: const Icon(Icons.menu),
            actions: const [Icon(Icons.notifications), Icon(Icons.more_horiz)],
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    const Flexible(
                      child: TextField(
                        decoration: InputDecoration(filled: true, fillColor: Colors.blue),
                      ),
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      color: Colors.orange,
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
                      CategoryMenuItem(),
                      CategoryMenuItem(),
                      CategoryMenuItem(),
                      CategoryMenuItem(),
                      CategoryMenuItem(),
                    ],
                  ),
                ),
                const SizedBox(height: 25),
                const CarouselShowCard(),
                const SizedBox(height: 25),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Popular",
                    style: Theme.of(context).textTheme.headline5,
                  ),
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
                const SizedBox(height: 25),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "You may like",
                    style: Theme.of(context).textTheme.headline5,
                  ),
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
                SizedBox(height: MediaQuery.of(context).viewPadding.bottom+25),
              ],
            ),
          ),
        );
      },
      viewModelBuilder: () => locator<HomeViewModel>(),
    );
  }
}
