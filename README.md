# neom_app

A Minimal Flutter Application to Showcase Open Neom Architecture & Generator.

neom_app serves as the entry point and a foundational example of the Open Neom modular architecture.
It is designed to be a lightweight, functional application primarily showcasing the neom_generator module,
allowing developers and users to explore the core Tecnozenism concept of frequency generation without requiring
full authentication or extensive user profiles.

This project is intended for publication on pub.dev as a minimal, runnable demonstration of the Open Neom ecosystem's
capabilities and modular design. It provides a clear path for future expansion and integration of additional features.

🌟 Features & Purpose
neom_app is built to:
•	Showcase Modular Architecture: Demonstrate how the neom_core, neom_commons, and neom_generator modules
    integrate seamlessly.
•	Direct Access to Neom Generator: Provide immediate access to the "Neom Chamber" (frequency generator)
    functionality upon launch, bypassing authentication and profile setup.
•	Minimalist Footprint: Include only the essential dependencies required for the core generator functionality,
    keeping the application light.
•	Foundation for Expansion: Serve as a clear starting point for developers to progressively add more modules
    (e.g., neom_auth, neom_profile, neom_timeline, neom_events) to build a full-featured application.

📦 Installation
To get started with neom_app, ensure you have Flutter installed and configured.
1.	Clone the repository:
2.	git clone https://github.com/Open-Neom/neom_app_lite.git
3.	cd neom_app

4.	Install dependencies:
5.	flutter pub get

This command will resolve the Git dependencies for neom_core, neom_commons, and neom_generator.
6.	Run the application:
7.	flutter run

The app will launch directly into the NeomGeneratorPage.

🚀 Usage
neom_app provides a direct route to the NeomGeneratorPage as its initial screen.

Initial Route Configuration (in lib/app_routes.dart):

// lib/app_routes.dart
import 'package:get/get.dart';
import 'package:neom_core/core/ui/root_page.dart';
import 'package:neom_core/core/utils/constants/app_route_constants.dart';
import 'package:neom_generator/generator/ui/neom_generator_page.dart'; // Ensure correct path

class AppRoutes {
    static List<GetPage> getAppRoutes() {
        List<GetPage<dynamic>> appRoutes = [
            GetPage(
                name: AppRouteConstants.root, // The root route is set to the generator
                page: () => RootPage(
                    rootPage: NeomGeneratorPage(), // Direct launch of the generator page
                    splashPage: SplashPage(), // Placeholder splash page
                    homePage: null, // No full home page in this minimal version
                    homeService: null,
                    previousVersionPage: PreviousVersionPage(), // Placeholder
                    onGoingPage: OnGoingPage(), // Placeholder
                    showExitConfirmationDialog: AppAlerts.showExitConfirmationDialog
                ),
                transition: Transition.zoom
            ),
            // ... other generator-specific routes from NeomGeneratorRoutes
        ];
        return appRoutes;
    }
}

Minimal RootBinding (in lib/root_binding.dart):
The RootBinding is intentionally minimal, only including essential services for neom_generator 
to function without authentication or full user profile management.

// lib/root_binding.dart
import 'package:get/get.dart';
import 'package:neom_generator/generator/bindings/generator_binding.dart'; // Ensure correct path

class RootBinding extends Bindings {
    @override
    List<Bind> dependencies() {
        return [
            // Only include bindings necessary for neom_generator and its direct dependencies
            Bind.lazyPut(() => NeomGeneratorController(), fenix: true),
            Bind.lazyPut<NeomGeneratorService>(() => Get.find<NeomGeneratorController>(), fenix: true),
        ];
    }
}

🛠️ Dependencies
neom_app relies on the following key modules and packages:
•	flutter: The Flutter SDK.
•	flutter_localizations: For internationalization support.
•	neom_core: Provides core models, universal interfaces, and foundational utilities.
•	neom_commons: Offers reusable UI widgets, common utilities, and shared constants.
•	neom_generator: Encapsulates the frequency generation logic and UI.

🤝 Contributing
We welcome contributions to neom_app and the broader Open Neom ecosystem! This project serves as a starting point for collaboration.
Please refer to the main Open Neom repository for detailed contribution guidelines and code of conduct.

📄 License
This project is licensed under the Apache License, Version 2.0, January 2004. See the LICENSE file for details.
