import 'package:duckma_crow_flutter/duckma_crow_flutter.dart';
import 'package:flutter/material.dart';
import 'package:fit_you/features/base/utils/namespaces/app_colors.dart';
import 'package:fit_you/features/body/presentation/view/screens/body_screen.dart';
import 'package:fit_you/features/culture/presentation/view/screens/culture_screen.dart';
import 'package:fit_you/features/environment/presentation/view/screens/environment_screen.dart';
import 'package:fit_you/features/goal/presentation/view/screens/goal_screen.dart';
import 'package:fit_you/features/interior/presentation/view/screens/interior_screen.dart';
import 'package:fit_you/features/main_structure/domain/main_structure_repository.dart';
import 'package:get/get.dart';

class MainViewModel extends ViewModel with StateMixin<dynamic> {
  MainViewModel(
    this._mainStructureRepository,
  );

  final MainStructureRepository _mainStructureRepository;
  int currentIndex = 0;
  bool get isInitialIndex => currentIndex == 0;
  bool get isFirstIndex => currentIndex == 1;
  bool get isSecondIndex => currentIndex == 2;
  bool get isThirdIndex => currentIndex == 3;
  bool get isFourthIndex => currentIndex == 4;

  List<Widget> pages = <Widget>[
    GoalScreen(),
    EnvironmentScreen(),
    BodyScreen(),
    CultureScreen(),
    InteriorScreen(),
  ];

  @override
  Future<void> onInit() async {
    super.onInit();
    change(null, status: RxStatus.success());
  }

  void changeNavIndex(int index) {
    currentIndex = index;
    update();
  }

  BoxDecoration selectedIndexDecoration() {
    return BoxDecoration(
      color: AppColors.lightGrey,
      borderRadius: BorderRadius.circular(16),
    );
  }

}
