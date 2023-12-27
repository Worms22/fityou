import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

extension Images on Never {
  //authentication
  //static const String loginBackground = 'assets/images/loginBackground.png';
  //static const String logoTitle = 'assets/images/logoTitle.png';
  static const String splashLogo = 'assets/images/splashLogo.png';
  static const String eye = 'assets/images/eye.svg';
  static const String closeEye = 'assets/images/closedEye.svg';

//onboarding
  static const String onboarding1 = 'assets/images/Onboarding1.png';
  static const String onboarding2 = 'assets/images/Onboarding1.png';
  static const String onboarding3 = 'assets/images/Onboarding1.png';

  //main structure
  static const String environmentIcon = 'assets/images/environmentIcon.svg';
  static const String bodyIcon = 'assets/images/bodyIcon.svg';
  static const String profileIcon = 'assets/images/profileIcon.svg';

  //environment
  static const String environmentButtonIcon = 'assets/images/leaf-icon.png';
  static const String environmentEmptyState = 'assets/images/environment-empty-state.png';

  //fitness
  static const String fitnessBackground = 'assets/images/fitness-background.png';

  //culture
  static const String cultureBackground = 'assets/images/culture-background.jpeg';



  Widget customSvgAsset({
    String? svgImage,
    double? height,
    double? width,
    BoxFit? fit,
  }) {
    return SvgPicture.asset(
      svgImage!,
      width: width,
      height: height,
      fit: fit!,
    );
  }
}
