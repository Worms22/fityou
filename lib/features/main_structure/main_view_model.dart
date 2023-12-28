import 'package:crow/crow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_structure/features/base/utils/namespaces/app_colors.dart';
import 'package:flutter_structure/features/body/presentation/view/screens/body_screen.dart';
import 'package:flutter_structure/features/culture/presentation/view/screens/culture_screen.dart';
import 'package:flutter_structure/features/environment/presentation/view/screens/environment_screen.dart';
import 'package:flutter_structure/features/interior/presentation/view/screens/interior_screen.dart';
import 'package:flutter_structure/features/main_structure/domain/main_structure_repository.dart';
import 'package:flutter_structure/features/profile/presentation/view/screens/profile_screen.dart';
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
    EnvironmentScreen(),
    BodyScreen(),
    CultureScreen(),
    InteriorScreen(),
    ProfileScreen(),
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
