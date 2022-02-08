import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'help_view_model.dart';
          
class HelpView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HelpViewModel>.reactive(
      builder: (BuildContext context, HelpViewModel viewModel, Widget _) {
        return Scaffold(
          appBar: AppBar(),
          body: Center(
            child: Text('Help View'),
          ),
        );
      },
      viewModelBuilder: () => HelpViewModel(),
    );
  }
}
