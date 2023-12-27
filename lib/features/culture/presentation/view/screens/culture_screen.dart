import 'package:crow/crow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_structure/features/culture/presentation/view_models/culture_view_model.dart';
import 'package:get/get.dart';

class CultureScreen extends Screen<CultureViewModel> {
  CultureScreen({super.key});

  @override
  Widget builder() {
    return viewModel.obx(
      (_) => !viewModel.isConnected.value
          ? Container()
          : WillPopScope(
              onWillPop: () async => false,
              child: Scaffold(
                backgroundColor: Colors.white,
                body: ListView(
                  children: <Widget>[
                    SizedBox(
                      height: Get.height * 0.3,
                    ),
                    const Center(child: Text('Culture')),
                    SizedBox(
                      height: Get.height * 0.3,
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
