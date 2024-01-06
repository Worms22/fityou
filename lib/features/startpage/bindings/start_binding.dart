import 'package:duckma_crow_flutter/duckma_crow_flutter.dart';
import 'package:fit_you/features/startpage/presentation/view_models/start_view_model.dart';
import 'package:get/get.dart';


class StartBinding extends Binding {
  @override
  void dependencies() {
    Get.lazyPut(StartViewModel.new);
  }
}
