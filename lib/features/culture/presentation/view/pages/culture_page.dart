import 'package:crow/crow.dart';
import 'package:flutter_structure/features/base/router/app_routes.dart';
import 'package:flutter_structure/features/body/bindings/body_bindings.dart';
import 'package:flutter_structure/features/body/presentation/view/screens/body_screen.dart';


class BodyPage extends Page<dynamic> {
  BodyPage()
      : super(
    name: Routes.body,
    view: BodyScreen.new,
    binding: BodyBinding(),
  );
}
