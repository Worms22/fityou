import 'package:crow/crow.dart';
import 'package:flutter_structure/features/base/router/app_routes.dart';
import 'package:flutter_structure/features/environment/bindings/environment_bindings.dart';
import 'package:flutter_structure/features/environment/presentation/view/screens/environment_screen.dart';


class EnvironmentPage extends Page<dynamic> {
  EnvironmentPage()
      : super(
    name: Routes.environment,
    view: EnvironmentScreen.new,
    binding: EnvironmentBinding(),
  );
}
