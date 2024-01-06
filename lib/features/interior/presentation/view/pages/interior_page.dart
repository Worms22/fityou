import 'package:duckma_crow_flutter/duckma_crow_flutter.dart';
import 'package:fit_you/features/base/router/app_routes.dart';
import 'package:fit_you/features/interior/bindings/interior_bindings.dart';
import 'package:fit_you/features/interior/presentation/view/screens/interior_screen.dart';


class InteriorPage extends Page<dynamic> {
  InteriorPage()
      : super(
    name: Routes.body,
    page: InteriorScreen.new,
    binding: InteriorBinding(),
  );
}
