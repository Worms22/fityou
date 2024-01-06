import 'package:duckma_crow_flutter/duckma_crow_flutter.dart';
import 'package:fit_you/features/base/router/app_routes.dart';
import 'package:fit_you/features/startpage/bindings/start_binding.dart';
import 'package:fit_you/features/startpage/presentation/view/screens/start_screen.dart';

class StartPage extends Page<dynamic> {
  StartPage()
      : super(
    name: Routes.start,
    page: StartScreen.new,
    binding: StartBinding(),
  );
}
