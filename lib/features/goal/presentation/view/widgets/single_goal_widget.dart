import 'package:flutter/material.dart';
import 'package:fit_you/features/base/utils/namespaces/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

Widget singleGoalWidget({
  required double width,
  required String type,
  required String icon,
  required String title,
  required Color color,
}) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(30),
      border: Border.all(color: Colors.grey),
    ),
    width: width,
    height: 60,
    child: Stack(
      alignment: Alignment.centerLeft,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(30),
          ),
          width: width / 2,
          height: 60,
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      icon,
                      width: 50,
                      height: 50,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width / 4),
          child: Text(
            title,
            style: GoogleFonts.montserrat(
              fontSize: 17,
              fontWeight: FontWeight.w700,
              color: AppColors.black,
            ),
          ),
        ),
      ],
    ),
  );
}