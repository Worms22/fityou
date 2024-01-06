import 'package:duckma_crow_flutter/duckma_crow_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:fit_you/features/base/genaral_entities/activity_entity.dart';
import 'package:fit_you/features/base/utils/namespaces/app_colors.dart';
import 'package:fit_you/features/base/utils/namespaces/images.dart';
import 'package:fit_you/features/base/widgets/single_activity_button.dart';
import 'package:fit_you/features/culture/presentation/view_models/culture_view_model.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CultureScreen extends Screen<CultureViewModel> {
  CultureScreen({super.key});

  @override
  Widget builder() {
    return viewModel.obx(
      (_) => !viewModel.isConnected.value
          ? Container()
          : WillPopScope(
              onWillPop: () async => false,
              child: Scaffold(
                appBar: AppBar(
                  backgroundColor: AppColors.cultureYellow,
                  title: Text(
                    AppLocalizations.of(Get.context!)!.culture,
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
                  color: AppColors.cultureYellow,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Stack(
                      children: <Widget>[
                        Center(
                          child: Container(
                            child: Image.asset(
                              Images.cultureBackground,
                            ),
                          ),
                        ),
                        ListView(
                          children: <Widget>[
                            SizedBox(
                              height: Get.height * 0.1,
                            ),
                            for (final ActivityEntity item
                            in viewModel.buttonList)
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
