import 'package:duckma_crow_flutter/duckma_crow_flutter.dart';
import 'package:fit_you/features/base/router/app_routes.dart';
import 'package:fit_you/features/body/bindings/body_bindings.dart';
import 'package:fit_you/features/body/presentation/view/screens/body_screen.dart';


class BodyPage extends Page<dynamic> {
  BodyPage()
      : super(
    name: Routes.body,
    page: BodyScreen.new,
    binding: BodyBinding(),
  );
}
