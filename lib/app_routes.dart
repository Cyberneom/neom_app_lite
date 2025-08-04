import 'package:get/get.dart';
import 'package:neom_commons/ui/on_going_page.dart';
import 'package:neom_commons/ui/previous_version_page.dart';
import 'package:neom_commons/ui/splash_page.dart';
import 'package:neom_commons/utils/app_alerts.dart';
import 'package:neom_commons/utils/constants/translations/app_translation_constants.dart';
import 'package:neom_core/ui/root_page.dart';
import 'package:neom_core/utils/constants/app_route_constants.dart';
import 'package:neom_frequencies/frequency_routes.dart';
import 'package:neom_frequencies/ui/frequency_page.dart';
import 'package:neom_generator/generator_routes.dart';

import 'package:neom_generator/ui/neom_generator_page.dart';
import 'package:neom_home/ui/home_page.dart';

class AppRoutes {

  static List<GetPage> getAppRoutes() {
    List<GetPage<dynamic>> appRoutes = [
      GetPage(
          name: AppRouteConstants.root,
          page: () => RootPage(
              // rootPage: OnGoingPage(),
              rootPage: HomePage(
                firstPage: NeomGeneratorPage(showAppBar: false,),
                firstTabName: AppTranslationConstants.generator,
                secondPage: FrequencyPage(showAppBar: false,),
                secondTabName: AppTranslationConstants.frequencies,
                // thirdPage: BookingHomePage(),
                // forthPage: AudioPlayerRootPage()
              ),
              splashPage: SplashPage(),
              homePage: null,
              homeService: null,
              previousVersionPage: PreviousVersionPage(), onGoingPage: OnGoingPage(),
              showExitConfirmationDialog: AppAlerts.showExitConfirmationDialog),
          transition: Transition.zoom
      ),
      ...GeneratorRoutes.routes,
      ...FrequencyRoutes.routes,
      ///UNCOMMENT WHEN IMPORTING NEOM_AUDIO_PLAYER
      // GetPage(
      //   name: AppRouteConstants.audioPlayer,
      //   page: () => const AudioPlayerRootPage(secondaryPage: ItemlistPage(),),
      //   transition: Transition.rightToLeftWithFade,
      // ),
      ///UNCOMMENT WHEN IMPORTING NEOM_XXXX FEATURES
      // ...AdminRoutes.routes,
      // ...AuthRoutes.routes,
      // ...BandsRoutes.routes,
      // ...BankRoutes.routes,
      // ...BookingRoutes.routes,
      // ...CalendarRoutes.routes,
      // ...CommerceRoutes.routes,
      // ...CommonRoutes.routes,
      // ...DirectoryRoutes.routes,
      // ...EventsRoutes.routes,
      // ...HomeRoutes.routes,
      // ...ItemlistsRoutes.routes,
      // ...InboxRoutes.routes,
      // ...InstrumentsRoutes.routes,
      // ...MatesRoutes.routes,
      // ...AudioPlayerRoutes.routes,
      // ...MediaPlayerRoutes.routes,
      // ...NotificationsRoutes.routes,
      // ...OnBoardingRoutes.routes,
      // ...PostRoutes.routes,
      // ...ProfileRoutes.routes,
      // ...ReleasesRoutes.routes,
      // ...RequestsRoutes.routes,
      // ...SearchRoutes.routes,
      // ...TimelineRoutes.routes,
      // ...WooRoutes.routes,
      // ...FrequencyRoutes.routes,
    ];

    return appRoutes;
  }

}
