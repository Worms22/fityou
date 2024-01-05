import 'package:duckma_crow_flutter/duckma_crow_flutter.dart';
import 'package:flutter_structure/features/environment/data/data_sources/home_remote_data_source.dart';
import 'package:flutter_structure/features/environment/data/data_sources/home_remote_data_source_impl.dart';
import 'package:flutter_structure/features/environment/data/home_repository_impl.dart';
import 'package:flutter_structure/features/environment/domain/home_repository.dart';
import 'package:flutter_structure/features/environment/presentation/view_models/environment_view_model.dart';
import 'package:get/get.dart';


class EnvironmentBinding extends Binding {
  @override
  void dependencies() {
    Get.lazyPut<EnvironmentRemoteDataSource>(EnvironmentRemoteDataSourceImpl.new);

    Get.lazyPut<EnvironmentRepository>(
          () => EnvironmentRepositoryImpl(
        Get.find<EnvironmentRemoteDataSource>(),
      ),
    );

    Get.lazyPut(
          () => EnvironmentViewModel(
        Get.find<EnvironmentRepository>(),
      ),
    );
  }
}
