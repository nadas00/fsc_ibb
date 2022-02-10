import 'dart:ui';

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
          body: Stack(
            children: [
              SingleChildScrollView(
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
                    SizedBox(height: MediaQuery.of(context).viewPadding.bottom + 125),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewPadding.bottom + 25),
                  child: Stack(
                    fit: StackFit.expand,
                    children: <Widget>[
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(25),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(
                              sigmaX: 15.0,
                              sigmaY: 15.0,
                            ),
                            child: Container(
                              width: MediaQuery.of(context).size.width - 25,
                              padding: const EdgeInsets.all(16.0),
                              color: Colors.grey.withOpacity(0.5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: const [
                                  MenuItem(
                                    icon: Icons.home,
                                    title: "Home",
                                    isSelected: true,
                                  ),
                                  MenuItem(icon: Icons.play_arrow, title: "Live TV"),
                                  MenuItem(icon: Icons.gamepad, title: "Games"),
                                  MenuItem(icon: Icons.settings, title: "Settings"),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
      viewModelBuilder: () => locator<HomeViewModel>(),
    );
  }
}

class MenuItem extends StatelessWidget {
  const MenuItem({
    Key key,
    this.title,
    this.icon,
    this.isSelected = false,
  }) : super(key: key);

  final String title;
  final IconData icon;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: isSelected ? Colors.deepOrangeAccent : null),
        const SizedBox(height: 8),
        Text(
          title,
          style: Theme.of(context).textTheme.bodyText1.copyWith(color: isSelected ? Colors.deepOrangeAccent : null),
        ),
      ],
    );
  }
}
