import 'package:duckma_crow_flutter/duckma_crow_flutter.dart';
import 'package:fit_you/features/goal/data/data_sources/goal_remote_data_source.dart';
import 'package:fit_you/features/goal/data/data_sources/goal_remote_data_source_impl.dart';
import 'package:fit_you/features/goal/data/goal_repository_impl.dart';
import 'package:fit_you/features/goal/domain/goal_repository.dart';
import 'package:fit_you/features/goal/presentation/view_models/goal_view_model.dart';
import 'package:get/get.dart';


class GoalBinding extends Binding {
  @override
  void dependencies() {
    Get.lazyPut<GoalRemoteDataSource>(GoalRemoteDataSourceImpl.new);

    Get.lazyPut<GoalRepository>(
          () => GoalRepositoryImpl(
        Get.find<GoalRemoteDataSource>(),
      ),
    );

    Get.lazyPut(
          () => GoalViewModel(
        Get.find<GoalRepository>(),
      ),
    );
  }
}
