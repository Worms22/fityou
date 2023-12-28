import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:crow/crow.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_structure/features/base/utils/namespaces/app_colors.dart';
import 'package:flutter_structure/features/base/utils/namespaces/images.dart';
import 'package:flutter_structure/features/environment/domain/entities/env_entity.dart';
import 'package:flutter_structure/features/environment/domain/home_repository.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class EnvironmentViewModel extends ViewModel with StateMixin<dynamic> {
  EnvironmentViewModel(
    this._environmentRepository,
  );
  final EnvironmentRepository _environmentRepository;

  RxString motivationalSentence = ''.obs;
  RxInt numb = 6.obs;
  late String name;
  RxBool isConnected = true.obs;
  String detailTitle = '';
  String? token;
  List<EnvEntity> buttonList = <EnvEntity>[
    EnvEntity(
      title: AppLocalizations.of(Get.context!)!.publicTransportTitle,
      type: 'type',
      icon: Images.environmentButtonIcon,
      color: AppColors.environmentGreenAccent,
    ),
    EnvEntity(
      title: AppLocalizations.of(Get.context!)!.shareCarTitle,
      type: 'type',
      icon: Images.environmentButtonIcon,
      color: AppColors.environmentGreenAccent,
    ),
    EnvEntity(
      title: AppLocalizations.of(Get.context!)!.walkInsteadUseCarTitle,
      type: 'type',
      icon: Images.environmentButtonIcon,
      color: AppColors.environmentGreenAccent,
    ),
    EnvEntity(
      title: AppLocalizations.of(Get.context!)!.eatVeganTitle,
      type: 'type',
      icon: Images.environmentButtonIcon,
      color: AppColors.environmentGreenAccent,
    ),
  ];

  @override
  Future<void> onReady() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String email = prefs.getString('email') ?? '';
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
