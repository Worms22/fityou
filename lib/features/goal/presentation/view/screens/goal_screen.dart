import 'package:duckma_crow_flutter/duckma_crow_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:fit_you/features/base/genaral_entities/activity_entity.dart';
import 'package:fit_you/features/base/utils/namespaces/app_colors.dart';
import 'package:fit_you/features/base/utils/namespaces/images.dart';
import 'package:fit_you/features/base/widgets/single_activity_button.dart';
import 'package:fit_you/features/goal/presentation/view/widgets/gift_section.dart';
import 'package:fit_you/features/goal/presentation/view/widgets/long_term_section.dart';
import 'package:fit_you/features/goal/presentation/view_models/goal_view_model.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class GoalScreen extends Screen<GoalViewModel> {
  GoalScreen({super.key});

  @override
  Widget builder() {
    return viewModel.obx(
      (_) => !viewModel.isConnected.value
          ? Container()
          : WillPopScope(
              onWillPop: () async => false,
              child: Scaffold(
                appBar: AppBar(
                  backgroundColor: AppColors.goalPurple,
                  title: Text(
                    AppLocalizations.of(Get.context!)!.goal,
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
                  color: AppColors.goalPurple,
                  child: Stack(
                    children: <Widget>[
                      Center(
                        child: Image.asset(Images.goalBackground),
                      ),
                      ListView(
                        children: <Widget>[
                          SizedBox(
                            height: Get.height * 0.01,
                          ),
                          giftSection(),
                          SizedBox(
                            height: Get.height * 0.05,
                          ),
                          longTermSection(),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
    );
  }
}
