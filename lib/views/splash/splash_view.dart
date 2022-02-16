import 'package:flutter/material.dart';
import 'package:fsc_ibb/core/locator.dart';
import 'package:fsc_ibb/widgets/utils/gradient_masker.dart';
import 'package:stacked/stacked.dart';
import 'splash_view_model.dart';
import 'package:fsc_ibb/core/utils/extension/context/translation_context_extension.dart';

part 'widget/parts/splash_subtitle.dart';
part 'widget/parts/splash_topic.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SplashViewModel>.reactive(
      viewModelBuilder: () => locator<SplashViewModel>(),
      onModelReady: (model) {
        model.setContext(context);
        model.completeSplash();
      },
      builder: (BuildContext context, SplashViewModel viewModel, Widget _) {
        return Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _SplashTopic(text: context.translation.movie_app),
                const SizedBox(height: 25),
                _SplashSubTitle(text: context.translation.best_shows_for_you),
                const SizedBox(height: 25),
                const CircularProgressIndicator.adaptive(),
              ],
            ),
          ),
        );
      },
    );
  }
}
