import 'package:duckma_crow_flutter/duckma_crow_flutter.dart';
import 'package:fit_you/features/base/router/app_routes.dart';
import 'package:fit_you/features/environment/presentation/view/pages/environment_page.dart';
import 'package:fit_you/features/login/presentation/view/pages/login_page.dart';
import 'package:fit_you/features/main_structure/presentation/page/main_page.dart';
import 'package:fit_you/features/profile/presentation/view/pages/change_password_page.dart';
import 'package:fit_you/features/profile/presentation/view/pages/profile_page.dart';
import 'package:fit_you/features/body/presentation/view/pages/body_page.dart';
import 'package:fit_you/features/signup/presentation/view/pages/signup_page.dart';
import 'package:fit_you/features/signup/presentation/view/pages/signup_page_step2.dart';
import 'package:fit_you/features/splashscreen/presentation/view/page/splash_page.dart';
import 'package:fit_you/features/startpage/presentation/view/pages/start_page.dart';

abstract class AppRouter {
  static const String initial = Routes.splash;

  static List<Page<dynamic>> get pages => _getPages();

  static List<Page<dynamic>> _getPages() {
    return <Page<dynamic>>[
      SplashPage(),
      StartPage(),
      LoginPage(),
      SignupPage(),
      SignupPageStep2(),
      MainPage(),
      EnvironmentPage(),
      BodyPage(),
      ProfilePage(),
      ChangePasswordPage()
    ];
  }
}
