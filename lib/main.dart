import 'package:flutter/material.dart';
import 'package:fsc_ibb/core/init/theme/app_theme.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'core/locator.dart';
import 'core/router_constants.dart';
import 'core/router.dart' as router;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocatorInjector.setUpLocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      navigatorKey: locator<NavigationService>().navigatorKey,
      onGenerateRoute: router.Router.generateRoute,
      initialRoute: splashViewRoute,
      theme: defaultTheme,
    );
  }
}

class CachedImageStorage {
  static final CachedImageStorage _instace = CachedImageStorage._init();
  static CachedImageStorage get instance => _instace;
  CachedImageStorage._init();

  BuildContext _context;
  NetworkImage loginBackgroundImage = const NetworkImage(
    'https://media.giphy.com/media/xT9IgN8YKRhByRBzMI/giphy-downsized-large.gif',
  );

  init(BuildContext context) async {
    _context = context;
    await precacheImage(loginBackgroundImage, _context);
  }
}
