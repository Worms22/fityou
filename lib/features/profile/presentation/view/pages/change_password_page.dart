import 'package:duckma_crow_flutter/duckma_crow_flutter.dart';
import 'package:flutter_structure/features/base/router/app_routes.dart';
import 'package:flutter_structure/features/profile/bindings/profile_bindings.dart';
import 'package:flutter_structure/features/profile/presentation/view/screens/change_password_screen.dart';

class ChangePasswordPage extends Page<dynamic> {
  ChangePasswordPage()
      : super(
          page: ChangePasswordScreen.new,
          binding: ProfileBinding(),
          name: Routes.changePassword,
        );
}
