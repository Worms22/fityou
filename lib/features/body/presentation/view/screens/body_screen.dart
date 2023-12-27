import 'package:crow/crow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_structure/features/body/presentation/view_models/body_view_model.dart';
import 'package:get/get.dart';

class BodyScreen extends Screen<BodyViewModel> {
  BodyScreen({super.key});

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
                    const Center(child: Text('Body')),
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
