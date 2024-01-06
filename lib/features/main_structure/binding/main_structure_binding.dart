import 'package:duckma_crow_flutter/duckma_crow_flutter.dart';
import 'package:fit_you/features/body/data/body_repository_impl.dart';
import 'package:fit_you/features/body/data/data_sources/body_remote_data_source.dart';
import 'package:fit_you/features/body/data/data_sources/body_remote_data_source_impl.dart';
import 'package:fit_you/features/body/domain/body_repository.dart';
import 'package:fit_you/features/body/presentation/view_models/body_view_model.dart';
import 'package:fit_you/features/culture/data/culture_repository_impl.dart';
import 'package:fit_you/features/culture/data/data_sources/culture_remote_data_source.dart';
import 'package:fit_you/features/culture/data/data_sources/culture_remote_data_source_impl.dart';
import 'package:fit_you/features/culture/domain/culture_repository.dart';
import 'package:fit_you/features/culture/presentation/view_models/culture_view_model.dart';
import 'package:fit_you/features/environment/data/data_sources/home_remote_data_source.dart';
import 'package:fit_you/features/environment/data/data_sources/home_remote_data_source_impl.dart';
import 'package:fit_you/features/environment/data/home_repository_impl.dart';
import 'package:fit_you/features/environment/domain/home_repository.dart';
import 'package:fit_you/features/environment/presentation/view_models/environment_view_model.dart';
import 'package:fit_you/features/goal/data/data_sources/goal_remote_data_source.dart';
import 'package:fit_you/features/goal/data/data_sources/goal_remote_data_source_impl.dart';
import 'package:fit_you/features/goal/data/goal_repository_impl.dart';
import 'package:fit_you/features/goal/domain/goal_repository.dart';
import 'package:fit_you/features/goal/presentation/view_models/goal_view_model.dart';
import 'package:fit_you/features/interior/data/data_sources/interior_remote_data_source.dart';
import 'package:fit_you/features/interior/data/data_sources/interior_remote_data_source_impl.dart';
import 'package:fit_you/features/interior/data/interior_repository_impl.dart';
import 'package:fit_you/features/interior/domain/interior_repository.dart';
import 'package:fit_you/features/interior/presentation/view_models/interior_view_model.dart';
import 'package:fit_you/features/main_structure/data/data_sources/main_structure_data_source.dart';
import 'package:fit_you/features/main_structure/data/data_sources/main_structure_data_source_impl.dart';
import 'package:fit_you/features/main_structure/data/main_structure_repository_impl.dart';
import 'package:fit_you/features/main_structure/domain/main_structure_repository.dart';
import 'package:fit_you/features/main_structure/main_view_model.dart';
import 'package:fit_you/features/profile/data/data_sources/profile_remote_data_source.dart';
import 'package:fit_you/features/profile/data/data_sources/profile_remote_data_source_impl.dart';
import 'package:fit_you/features/profile/data/profile_repository_impl.dart';
import 'package:fit_you/features/profile/domain/profile_repository.dart';
import 'package:fit_you/features/profile/presentation/view_models/profile_view_model.dart';
import 'package:get/get.dart';



class MainStructureBinding extends Binding {
  @override
  void dependencies() {

    //environment bindings
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

    //body binding
    Get.lazyPut<BodyRemoteDataSource>(BodyRemoteDataSourceImpl.new);

    Get.lazyPut<BodyRepository>(
          () => BodyRepositoryImpl(
        Get.find<BodyRemoteDataSource>(),
      ),
    );

    Get.lazyPut(
          () => BodyViewModel(
        Get.find<BodyRepository>(),
      ),
    );

    //culture binding
    Get.lazyPut<CultureRemoteDataSource>(CultureRemoteDataSourceImpl.new);

    Get.lazyPut<CultureRepository>(
          () => CultureRepositoryImpl(
        Get.find<CultureRemoteDataSource>(),
      ),
    );

    Get.lazyPut(
          () => CultureViewModel(
        Get.find<CultureRepository>(),
      ),
    );

    //interior binding

    Get.lazyPut<InteriorRemoteDataSource>(InteriorRemoteDataSourceImpl.new);

    Get.lazyPut<InteriorRepository>(
          () => InteriorRepositoryImpl(
        Get.find<InteriorRemoteDataSource>(),
      ),
    );

    Get.lazyPut(
          () => InteriorViewModel(
        Get.find<InteriorRepository>(),
      ),
    );

    //profile
    Get.lazyPut<ProfileRemoteDataSource>(ProfileRemoteDataSourceImpl.new);

    Get.lazyPut<ProfileRepository>(
          () => ProfileRepositoryImpl(
        Get.find<ProfileRemoteDataSource>(),
      ),
    );

    Get.lazyPut(
          () => ProfileViewModel(
        Get.find<ProfileRepository>(),
      ),
    );

    //goal
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


    //main structure bindings
    Get.lazyPut<MainStructureDataSource>(MainStructureDataSourceImpl.new);

    Get.lazyPut<MainStructureRepository>(
          () => MainStructureRepositoryImpl(
        Get.find<MainStructureDataSource>(),
      ),
    );

    Get.lazyPut(
          () => MainViewModel(
        Get.find<MainStructureRepository>(),
      ),
    );
  }
}
