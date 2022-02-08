import 'package:flutter/material.dart';
import 'package:fsc_ibb/core/locator.dart';
import 'package:stacked/stacked.dart';
import 'splash_view_model.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SplashViewModel>.reactive(
      builder: (BuildContext context, SplashViewModel viewModel, Widget _) {
        return Scaffold(
          appBar: AppBar(title: Text(AppLocalizations.of(context).title)),
          body: const Center(
            child: Text('Splash View'),
          ),
        );
      },
      viewModelBuilder: () => locator<SplashViewModel>(),
      onModelReady: (model) => model.completeSplash(),
    );
  }
}
