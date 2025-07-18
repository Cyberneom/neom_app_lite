import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:logger/logger.dart';
import 'package:neom_commons/app_flavour.dart';
import 'package:neom_commons/ui/theme/app_color.dart';
import 'package:neom_commons/ui/theme/app_theme.dart';
import 'package:neom_commons/utils/constants/app_locale_constants.dart';
import 'package:neom_core/app_config.dart';
import 'package:neom_core/app_properties.dart';
import 'package:neom_core/utils/constants/app_route_constants.dart';
import 'package:neom_core/utils/enums/app_in_use.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:neom_core/utils/enums/app_locale.dart';
import 'package:open_neom/localization/app_translations.dart';

import 'app_routes.dart';
import 'root_binding.dart';

void main() async {

  Logger.level = kDebugMode ? Level.debug : Level.info;

  try {
    WidgetsFlutterBinding.ensureInitialized();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown
    ]);

    ///UNCOMMENT WHEN USING FIREBASE
    // await Firebase.initializeApp();

    ///UNCOMMENT WHEN USING FIREBASE NOTIFICATIONS
    // FirebaseMessaging.onBackgroundMessage(PushNotificationInvoker.backgroundHandler);

    ///UNCOMMENT WHEN USING FIREBASE CRASHLYTICS
    // FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;

    await AppConfig.instance.initialize(app: AppInUse.o);

    AppProperties();
    AppFlavour();

    await Hive.initFlutter();
  } catch (e) {
    AppConfig.logger.e(e.toString());
  }

  runApp(const OpenNeom());
}

class OpenNeom extends StatelessWidget {
  const OpenNeom({super.key});

  @override
  Widget build(BuildContext context) {
    initializeDateFormatting(AppLocale.spanish.code);
    return GetMaterialApp(
      localeListResolutionCallback: (locales, supportedLocales) {
        for (var locale in locales!) {
          if (supportedLocales.contains(locale)) {
            return locale;
          }
        }
        return supportedLocales.first;
      },
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      shortcuts: {
        LogicalKeySet(LogicalKeyboardKey.space): const ActivateIntent(),
      },
      binds: RootBinding().dependencies(),
      enableLog: true,
      translations: AppTranslations(),
      locale: Locale(AppLocale.spanish.code), // Spanish, Mexico
      fallbackLocale: Locale(AppLocale.spanish.code), // Spanish, Mexico
      supportedLocales: [
        Locale(AppLocale.spanish.code), // Spanish, Mexico
        Locale(AppLocale.english.code), // English, United States
      ],
      defaultTransition: Transition.upToDown,
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: AppTheme.fontFamily,
        timePickerTheme: TimePickerThemeData(
            backgroundColor: AppColor.getMain()
        ),
      ),
      initialRoute: AppRouteConstants.root,
      getPages: AppRoutes.getAppRoutes(),
    );
  }

}
