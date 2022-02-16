import 'package:flutter/material.dart' show BuildContext;
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

extension TranslationExtension on BuildContext {
  AppLocalizations get translation => AppLocalizations.of(this);
}
