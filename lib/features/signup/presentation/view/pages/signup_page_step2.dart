import 'package:duckma_crow_flutter/duckma_crow_flutter.dart';
import 'package:flutter_structure/features/base/router/app_routes.dart';
import 'package:flutter_structure/features/signup/bindings/signup_binding.dart';
import 'package:flutter_structure/features/signup/presentation/view/screens/signup_screen_step2.dart';

class SignupPageStep2 extends Page<dynamic> {
  SignupPageStep2()
      : super(
    name: Routes.registrationStep2,
    page: SignupScreenStep2.new,
    binding: SignupBinding(),
  );
}
