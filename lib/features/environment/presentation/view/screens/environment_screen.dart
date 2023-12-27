import 'package:crow/crow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_structure/features/base/utils/namespaces/app_colors.dart';
import 'package:flutter_structure/features/base/utils/namespaces/images.dart';
import 'package:flutter_structure/features/base/widgets/single_activity_button.dart';
import 'package:flutter_structure/features/environment/presentation/view_models/environment_view_model.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class EnvironmentScreen extends Screen<EnvironmentViewModel> {
  EnvironmentScreen({super.key});

  @override
  Widget builder() {
    return viewModel.obx(
      (_) => !viewModel.isConnected.value
          ? Container()
          : WillPopScope(
              onWillPop: () async => false,
              child: Scaffold(
                appBar: AppBar(
                  backgroundColor: AppColors.environmentGreen,
                  title: Text(
                    'Ambiente',
                    style: GoogleFonts.montserrat(
                      fontSize: 35,
                      fontWeight: FontWeight.w600,
                      color: AppColors.black,
                    ),
                  ),
                  centerTitle: true,
                ),
                backgroundColor: Colors.white,
                body: Container(
                  color: AppColors.environmentGreen,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Stack(
                      children: <Widget>[
                        Center(
                          child: Container(
                            child: Image.asset(Images.environmentEmptyState),
                          ),
                        ),
                        ListView(
                          children: <Widget>[
                            SizedBox(
                              height: Get.height * 0.1,
                            ),
                            singleActivityButton(
                                title: 'Utilizzare mezzi pubblici',
                                width: 300,
                                type: "daa",
                                icon: Images.environmentButtonIcon,
                                color: AppColors.environmentGreenAccent,
                            ),
                            SizedBox(
                              height: Get.height * 0.05,
                            ),
                            singleActivityButton(
                                title: 'Utilizzare mezzi pubblici',
                                width: 300,
                                type: "daa",
                                icon: Images.environmentButtonIcon,
                              color: AppColors.environmentGreenAccent,
                            ),
                            SizedBox(
                              height: Get.height * 0.05,
                            ),
                            singleActivityButton(
                                title: 'Utilizzare mezzi pubblici',
                                width: 300,
                                type: "daa",
                                icon: Images.environmentButtonIcon,
                              color: AppColors.environmentGreenAccent,
                            ),
                            SizedBox(
                              height: Get.height * 0.05,
                            ),
                            singleActivityButton(
                                title: 'Utilizzare mezzi pubblici',
                                width: 300,
                                type: "daa",
                                icon: Images.environmentButtonIcon,
                              color: AppColors.environmentGreenAccent,
                            ),
                            SizedBox(
                              height: Get.height * 0.05,
                            ),
                            singleActivityButton(
                                title: 'Utilizzare mezzi pubblici',
                                width: 300,
                                type: "daa",
                                icon: Images.environmentButtonIcon,
                              color: AppColors.environmentGreenAccent,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
    );
  }
}
