import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:duckma_crow_flutter/duckma_crow_flutter.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:fit_you/features/base/genaral_entities/activity_entity.dart';
import 'package:fit_you/features/base/utils/namespaces/app_colors.dart';
import 'package:fit_you/features/base/utils/namespaces/images.dart';
import 'package:fit_you/features/culture/domain/culture_repository.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CultureViewModel extends ViewModel with StateMixin<dynamic> {
  CultureViewModel(
    this._cultureRepository,
  );
  final CultureRepository _cultureRepository;

  RxString motivationalSentence = ''.obs;
  RxInt numb = 6.obs;
  late String name;
  RxBool isConnected = true.obs;
  String detailTitle = '';
  String? token;


  List<ActivityEntity> buttonList = <ActivityEntity>[
    ActivityEntity(
      title: AppLocalizations.of(Get.context!)!.learnTitle,
      type: 'type',
      icon: Images.cultureButtonIcon,
      color: AppColors.cultureYellowAccent,
    ),
    ActivityEntity(
      title: AppLocalizations.of(Get.context!)!.readTitle,
      type: 'type',
      icon: Images.cultureButtonIcon,
      color: AppColors.cultureYellowAccent,
    ),
    ActivityEntity(
      title: AppLocalizations.of(Get.context!)!.listenNewsTitle,
      type: 'type',
      icon: Images.cultureButtonIcon,
      color: AppColors.cultureYellowAccent,
    ),
    ActivityEntity(
      title: AppLocalizations.of(Get.context!)!.otherTitle,
      type: 'type',
      icon: Images.cultureButtonIcon,
      color: AppColors.cultureYellowAccent,
    ),
    ActivityEntity(
      title: AppLocalizations.of(Get.context!)!.workTitle,
      type: 'type',
      icon: Images.cultureButtonIcon,
      color: AppColors.cultureYellowAccent,
    ),
    ActivityEntity(
      title: AppLocalizations.of(Get.context!)!.museumTitle,
      type: 'type',
      icon: Images.cultureButtonIcon,
      color: AppColors.cultureYellowAccent,
    ),
    ActivityEntity(
      title: AppLocalizations.of(Get.context!)!.monumentsTitle,
      type: 'type',
      icon: Images.cultureButtonIcon,
      color: AppColors.cultureYellowAccent,
    ),
    ActivityEntity(
      title: AppLocalizations.of(Get.context!)!.cityTitle,
      type: 'type',
      icon: Images.cultureButtonIcon,
      color: AppColors.cultureYellowAccent,
    ),
  ];


  @override
  Future<void> onReady() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    token = prefs.getString('jwt_token');
    final ConnectivityResult connectivityResult =
        await Connectivity().checkConnectivity();
    isConnected.value = (connectivityResult != ConnectivityResult.none);

    change(null, status: RxStatus.success());
    super.onReady();
  }

  @override
  Future<void> init() async {
    super.onReady();
    change(null, status: RxStatus.success());
  }
}
