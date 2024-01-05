import 'package:duckma_crow_flutter/duckma_crow_flutter.dart';
import 'package:flutter_structure/features/base/router/app_routes.dart';
import 'package:flutter_structure/features/environment/bindings/environment_bindings.dart';
import 'package:flutter_structure/features/environment/presentation/view/screens/environment_screen.dart';


class EnvironmentPage extends Page<dynamic> {
  EnvironmentPage()
      : super(
    name: Routes.environment,
    page: EnvironmentScreen.new,
    binding: EnvironmentBinding(),
  );
}
