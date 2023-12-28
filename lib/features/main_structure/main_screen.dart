import 'package:crow/crow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_structure/features/base/utils/namespaces/images.dart';
import 'package:flutter_structure/features/main_structure/main_view_model.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';


class MainScreen extends Screen<MainViewModel> {
  MainScreen({super.key});

  @override
  Widget builder() {
    return viewModel.obx(
          (_) => Scaffold(
            backgroundColor: Colors.white,
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          onTap: viewModel.changeNavIndex,
          type: BottomNavigationBarType.fixed,
          currentIndex: viewModel.currentIndex,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black87,
          showSelectedLabels: true,
          items: bottomNavigationItem(),
        ),
        body: viewModel.pages[viewModel.currentIndex],
      ),
    );
  }

  List<BottomNavigationBarItem> bottomNavigationItem() {
    return <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Container(
          width: 64,
          height: 32,
          decoration: viewModel.isInitialIndex
              ? viewModel.selectedIndexDecoration()
              : null,
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Image.asset(
              Images.environmentIcon,
            ),
          ),
        ),
        label: AppLocalizations.of(Get.context!)!.environment,
      ),
      BottomNavigationBarItem(
        icon: Container(
          width: 64,
          height: 32,
          decoration: viewModel.isFirstIndex
              ? viewModel.selectedIndexDecoration()
              : null,
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Image.asset(
              Images.bodyIcon,
            ),
          ),
        ),
        label: AppLocalizations.of(Get.context!)!.body,
      ),
      BottomNavigationBarItem(
        icon: Container(
          width: 64,
          height: 32,
          decoration: viewModel.isSecondIndex
              ? viewModel.selectedIndexDecoration()
              : null,
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Image.asset(
              Images.mindIcon,
            ),
          ),
        ),
        label: AppLocalizations.of(Get.context!)!.body,
      ),
      BottomNavigationBarItem(
        icon: Container(
          width: 64,
          height: 32,
          padding: const EdgeInsets.all(4),
          decoration: viewModel.isThirdIndex
              ? viewModel.selectedIndexDecoration()
              : null,
          child: Image.asset(
            Images.interiorIcon,
          ),
        ),
        label: AppLocalizations.of(Get.context!)!.profile,
      ),
      BottomNavigationBarItem(
        icon: Container(
          width: 64,
          height: 32,
          padding: const EdgeInsets.all(4),
          decoration: viewModel.isFourthIndex
              ? viewModel.selectedIndexDecoration()
              : null,
          child: SvgPicture.asset(
            Images.profileIcon,
          ),
        ),
        label: AppLocalizations.of(Get.context!)!.profile,
      ),
    ];
  }
}
