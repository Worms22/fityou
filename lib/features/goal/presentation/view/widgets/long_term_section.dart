import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fit_you/features/base/extensions/build_context_extension.dart';
import 'package:fit_you/features/base/utils/namespaces/app_colors.dart';
import 'package:fit_you/features/base/utils/namespaces/images.dart';
import 'package:fit_you/features/goal/presentation/view/widgets/single_goal_widget.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

Widget longTermSection(){
  return Column(
    children: <Widget>[
      Container(
        decoration: BoxDecoration(
          color: AppColors.goalPurpleAccent,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
          child: Row(
            children: <Widget>[
              Text(
                AppLocalizations.of(Get.context!)!.yourGoalTitle,
                style: GoogleFonts.montserrat(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  color: AppColors.white,
                ),
              ),
              const Spacer(),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.goalPurpleAccent,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    AppLocalizations.of(Get.context!)!.seeAll,
                    style: GoogleFonts.montserrat(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: AppColors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      const SizedBox(
        height: 20,
      ),
      singleGoalWidget(
        width: Get.width * 0.8,
        type: '',
        icon: Images.goalIcon,
        title: 'First gift',
        color: Colors.yellow,
      ),
      const SizedBox(
        height: 15,
      ),
      singleGoalWidget(
        width: Get.width * 0.8,
        type: '',
        icon: Images.goalIcon,
        title: 'Second gift',
        color: Colors.grey,
      ),
      const SizedBox(
        height: 15,
      ),
      singleGoalWidget(
        width: Get.width * 0.8,
        type: '',
        icon: Images.goalIcon,
        title: 'Third gift',
        color: Colors.orange,
      ),
    ],
  );
}