import 'package:fit_you/features/base/utils/entities/steps_dialog_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:fit_you/features/base/utils/namespaces/app_colors.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

Widget stepsAlertDialog({
  required String title,
  required List<StepDialogEntity> dialogEntityList,
  String? subtitle,
}) {
  return AlertDialog(
    title: Text(
      title,
      style: GoogleFonts.montserrat(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: AppColors.black,
      ),
    ),
    content: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        for(var element in dialogEntityList)
        TextButton(
          style: ButtonStyle(
            side: MaterialStateProperty.all(
              const BorderSide(
                color: AppColors.primary,
                width: 4.0,
              ),
            ),
            backgroundColor: MaterialStateProperty.resolveWith(
                  (Set<MaterialState> states) => Colors.white,),
            shape: MaterialStateProperty.resolveWith(
                  (Set<MaterialState> states) => RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          onPressed: element.action,
          child: Text(
            element.title + ' ' + element.points.toString(),
            style: GoogleFonts.montserrat(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: AppColors.primary,
            ),
          ),
        ),
      ],
    ),
    actions: <Widget>[
      TextButton(
        style: ButtonStyle(
          side: MaterialStateProperty.all(
            const BorderSide(
              color: AppColors.primary,
              width: 4.0,
            ),
          ),
          backgroundColor: MaterialStateProperty.resolveWith(
                (Set<MaterialState> states) => Colors.white,),
          shape: MaterialStateProperty.resolveWith(
                (Set<MaterialState> states) => RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
        onPressed: Get.back,
        child: Text(
          AppLocalizations.of(Get.context!)!.cancel,
          style: GoogleFonts.montserrat(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: AppColors.primary,
          ),
        ),
      ),
    ],
  );
}
