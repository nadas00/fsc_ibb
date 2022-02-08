import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'on_board_view_model.dart';
          
class OnBoardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<OnBoardViewModel>.reactive(
      builder: (BuildContext context, OnBoardViewModel viewModel, Widget _) {
        return Scaffold(
          appBar: AppBar(),
          body: Center(
            child: Text('OnBoard View'),
          ),
        );
      },
      viewModelBuilder: () => OnBoardViewModel(),
    );
  }
}
