import 'package:crow/crow.dart';
import 'package:flutter_structure/features/base/router/app_routes.dart';
import 'package:flutter_structure/features/interior/bindings/interior_bindings.dart';
import 'package:flutter_structure/features/interior/presentation/view/screens/interior_screen.dart';


class InteriorPage extends Page<dynamic> {
  InteriorPage()
      : super(
    name: Routes.body,
    view: InteriorScreen.new,
    binding: InteriorBinding(),
  );
}