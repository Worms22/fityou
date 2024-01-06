import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:duckma_crow_flutter/duckma_crow_flutter.dart';
import 'package:fit_you/features/base/genaral_entities/activity_entity.dart';
import 'package:fit_you/features/base/utils/namespaces/app_colors.dart';
import 'package:fit_you/features/base/utils/namespaces/images.dart';
import 'package:fit_you/features/interior/domain/interior_repository.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class InteriorViewModel extends ViewModel with StateMixin<dynamic> {
  InteriorViewModel(
    this._bodyRepository,
  );
  final InteriorRepository _bodyRepository;

  RxString motivationalSentence = ''.obs;
  RxInt numb = 6.obs;
  late String name;
  RxBool isConnected = true.obs;
  String detailTitle = '';
  String? token;
  List<ActivityEntity> buttonList = <ActivityEntity>[
    ActivityEntity(
      title: AppLocalizations.of(Get.context!)!.meditationTitle,
      type: 'type',
      icon: Images.mindButtonIcon,
      color: AppColors.interiorBlueAccent,
    ),
    ActivityEntity(
      title: AppLocalizations.of(Get.context!)!.talkTitle,
      type: 'type',
      icon: Images.mindButtonIcon,
      color: AppColors.interiorBlueAccent,
    ),
    ActivityEntity(
      title: AppLocalizations.of(Get.context!)!.learnPnlTitle,
      type: 'type',
      icon: Images.mindButtonIcon,
      color: AppColors.interiorBlueAccent,
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
