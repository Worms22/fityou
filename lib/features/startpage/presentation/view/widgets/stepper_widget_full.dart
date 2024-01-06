import 'package:flutter/material.dart';
import 'package:fit_you/features/base/utils/namespaces/app_colors.dart';

Widget stepperWidgetFull() {
  return Container(
    decoration: const BoxDecoration(
      color: AppColors.primary,
      borderRadius: BorderRadius.all(
        Radius.circular(5),
      ),
    ),
    width: 30,
    height: 10,
  );
}
