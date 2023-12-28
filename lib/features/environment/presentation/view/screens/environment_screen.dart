import 'package:crow/crow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_structure/features/base/utils/namespaces/app_colors.dart';
import 'package:flutter_structure/features/base/utils/namespaces/images.dart';
import 'package:flutter_structure/features/base/widgets/single_activity_button.dart';
import 'package:flutter_structure/features/base/genaral_entities/activity_entity.dart';
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
                    AppLocalizations.of(Get.context!)!.environment,
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
                          child: Image.asset(Images.environmentEmptyState),
                        ),
                        ListView(
                          children: <Widget>[
                            SizedBox(height: Get.height * 0.1,),
                            for (final ActivityEntity item in viewModel.buttonList)
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  vertical: 20,
                                ),
                                child: singleActivityButton(
                                  width: 300,
                                  type: item.type,
                                  icon: item.icon,
                                  title: item.title,
                                  color: item.color,
                                ),
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
