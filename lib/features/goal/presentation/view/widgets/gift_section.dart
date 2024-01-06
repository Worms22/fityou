import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:fit_you/features/base/utils/namespaces/app_colors.dart';
import 'package:fit_you/features/base/utils/namespaces/images.dart';
import 'package:fit_you/features/goal/presentation/view/widgets/single_goal_widget.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

Widget giftSection() {
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
                AppLocalizations.of(Get.context!)!.giftTitle,
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
        icon: Images.giftButtonIcon,
        title: 'First gift',
        color: AppColors.gold,
      ),
      const SizedBox(
        height: 15,
      ),
      singleGoalWidget(
        width: Get.width * 0.8,
        type: '',
        icon: Images.giftButtonIcon,
        title: 'Second gift',
        color: AppColors.silver,
      ),
      const SizedBox(
        height: 15,
      ),
      singleGoalWidget(
        width: Get.width * 0.8,
        type: '',
        icon: Images.giftButtonIcon,
        title: 'Third gift',
        color: AppColors.bronze,
      ),
    ],
  );
}
