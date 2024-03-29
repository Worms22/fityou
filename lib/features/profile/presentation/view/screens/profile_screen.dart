import 'package:crow/crow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_structure/features/base/utils/namespaces/app_colors.dart';
import 'package:flutter_structure/features/profile/presentation/view/widgets/setting_section.dart';
import 'package:flutter_structure/features/profile/presentation/view/widgets/user_section.dart';
import 'package:flutter_structure/features/profile/presentation/view_models/profile_view_model.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends Screen<ProfileViewModel> {
  ProfileScreen({super.key});

  @override
  Widget builder() {
    return viewModel.obx(
      (_) => !viewModel.isConnected.value
          ? Container()
          : WillPopScope(
              onWillPop: () async => false,
              child: Scaffold(
                backgroundColor: Colors.white,
                body: ListView(
                  children: <Widget>[
                    SizedBox(
                      height: Get.height * 0.01,
                    ),
                    Center(
                      child: Text(
                        'Profile',
                        style: GoogleFonts.montserrat(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: AppColors.black,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: Get.height * 0.01,
                    ),
                    userSection(viewModel),
                    const Center(child: Text('Custom fields')),
                    settingSection(viewModel),
                    SizedBox(
                      height: Get.height * 0.3,
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
