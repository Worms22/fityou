import 'package:duckma_crow_flutter/duckma_crow_flutter.dart';
import 'package:fit_you/features/base/router/app_routes.dart';
import 'package:fit_you/features/profile/bindings/profile_bindings.dart';
import 'package:fit_you/features/profile/presentation/view/screens/profile_screen.dart';

class ProfilePage extends Page<dynamic> {
  ProfilePage()
      : super(
    name: Routes.profile,
    page: ProfileScreen.new,
    binding: ProfileBinding(),
  );
}
