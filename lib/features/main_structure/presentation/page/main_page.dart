import 'package:duckma_crow_flutter/duckma_crow_flutter.dart';
import 'package:fit_you/features/base/router/app_routes.dart';
import 'package:fit_you/features/main_structure/binding/main_structure_binding.dart';
import 'package:fit_you/features/main_structure/main_screen.dart';



class MainPage extends Page<dynamic> {
  MainPage()
      : super(
    name: Routes.mainPage,
    page: MainScreen.new,
    binding: MainStructureBinding(),
  );
}
