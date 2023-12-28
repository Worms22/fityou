import 'package:crow/crow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_structure/features/base/utils/namespaces/app_colors.dart';
import 'package:flutter_structure/features/base/utils/namespaces/images.dart';
import 'package:flutter_structure/features/base/widgets/single_activity_button.dart';
import 'package:flutter_structure/features/interior/presentation/view_models/interior_view_model.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class InteriorScreen extends Screen<InteriorViewModel> {
  InteriorScreen({super.key});

  @override
  Widget builder() {
    return viewModel.obx(
      (_) => !viewModel.isConnected.value
          ? Container()
          : WillPopScope(
              onWillPop: () async => false,
              child: Scaffold(
                appBar: AppBar(
                  backgroundColor: AppColors.interiorBlue,
                  title: Text(
                    'Forza interiore',
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
                  color: AppColors.interiorBlue,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Stack(
                      children: <Widget>[
                        Center(
                          child: Container(
                            child: Image.asset(Images.interiorBackground),
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
                                color: AppColors.interiorBlueAccent,
                            ),
                            SizedBox(
                              height: Get.height * 0.05,
                            ),
                            singleActivityButton(
                                title: 'Utilizzare mezzi pubblici',
                                width: 300,
                                type: "daa",
                                icon: Images.environmentButtonIcon,
                              color: AppColors.interiorBlueAccent,
                            ),
                            SizedBox(
                              height: Get.height * 0.05,
                            ),
                            singleActivityButton(
                                title: 'Utilizzare mezzi pubblici',
                                width: 300,
                                type: "daa",
                                icon: Images.environmentButtonIcon,
                              color: AppColors.interiorBlueAccent,
                            ),
                            SizedBox(
                              height: Get.height * 0.05,
                            ),
                            singleActivityButton(
                                title: 'Utilizzare mezzi pubblici',
                                width: 300,
                                type: "daa",
                                icon: Images.environmentButtonIcon,
                              color: AppColors.interiorBlueAccent,

                            ),
                            SizedBox(
                              height: Get.height * 0.05,
                            ),
                            singleActivityButton(
                                title: 'Utilizzare mezzi pubblici',
                                width: 300,
                                type: "daa",
                                icon: Images.environmentButtonIcon,
                              color: AppColors.interiorBlueAccent,
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
