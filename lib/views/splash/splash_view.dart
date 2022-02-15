import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:fsc_ibb/core/locator.dart';
import 'package:fsc_ibb/widgets/utils/gradient_masker.dart';
import 'package:stacked/stacked.dart';
import 'splash_view_model.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SplashViewModel>.reactive(
      builder: (BuildContext context, SplashViewModel viewModel, Widget _) {
        return Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GradientMasker(active: true, child: Text('Movie App', style: Theme.of(context).textTheme.headline4)),
                const SizedBox(height: 25),
                Text('Best Shows For You', style: Theme.of(context).textTheme.subtitle2),
                const SizedBox(
                  height: 25,
                ),
                const CircularProgressIndicator.adaptive(),
              ],
            ),
          ),
        );
      },
      viewModelBuilder: () => locator<SplashViewModel>(),
      onModelReady: (model) {
        model.setContext(context);
        model.completeSplash();
      },
    );
  }
}
