import 'package:duckma_crow_flutter/duckma_crow_flutter.dart';
import 'package:fit_you/features/login/data/data_sources/login_remote_data_source.dart';
import 'package:fit_you/features/login/data/data_sources/login_remote_data_source_impl.dart';
import 'package:fit_you/features/login/data/login_repository_impl.dart';
import 'package:fit_you/features/login/domain/login_repository.dart';
import 'package:fit_you/features/login/presentation/view_models/login_view_model.dart';

import 'package:get/get.dart';

class LoginBinding extends Binding {
  @override
  void dependencies() {
    Get.lazyPut<LoginRemoteDataSource>(LoginRemoteDataSourceImpl.new);

    Get.lazyPut<LoginRepository>(
      () => LoginRepositoryImpl(
        Get.find<LoginRemoteDataSource>(),
      ),
    );

    Get.lazyPut(
      () => LoginViewModel(
        Get.find<LoginRepository>(),
      ),
    );
  }
}
