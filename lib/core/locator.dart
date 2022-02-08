import 'package:fsc_ibb/views/home/home_view_model.dart';
import 'package:fsc_ibb/views/splash/splash_view.dart';
import 'package:fsc_ibb/views/splash/splash_view_model.dart';
import 'package:get_it/get_it.dart';
import 'package:logger/logger.dart';
import 'package:stacked_services/stacked_services.dart';

import 'logger.dart';

final GetIt locator = GetIt.instance;

class LocatorInjector {
  static Future<void> setUpLocator() async {
    Logger log = getLogger('Locator Injector');
    log.d('Registering Navigation Service');
    locator.registerLazySingleton(() => NavigationService());
    log.d('Registering Dialog Service');
    locator.registerLazySingleton(() => DialogService());
    log.d('Registering Snackbar Service');
    locator.registerLazySingleton(() => SnackbarService());
    log.d('Registering Splash ViewModel');
    locator.registerLazySingleton(() => SplashViewModel());
    log.d('Registering Home ViewModel');
    locator.registerLazySingleton(() => HomeViewModel());
  }
}
