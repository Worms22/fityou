import 'package:crow/crow.dart';
import 'package:flutter_structure/features/body/data/body_repository_impl.dart';
import 'package:flutter_structure/features/body/data/data_sources/body_remote_data_source.dart';
import 'package:flutter_structure/features/body/data/data_sources/body_remote_data_source_impl.dart';
import 'package:flutter_structure/features/body/domain/body_repository.dart';
import 'package:flutter_structure/features/body/presentation/view_models/body_view_model.dart';
import 'package:flutter_structure/features/environment/data/data_sources/home_remote_data_source.dart';
import 'package:flutter_structure/features/environment/data/data_sources/home_remote_data_source_impl.dart';
import 'package:flutter_structure/features/environment/data/home_repository_impl.dart';
import 'package:flutter_structure/features/environment/domain/home_repository.dart';
import 'package:flutter_structure/features/environment/presentation/view_models/environment_view_model.dart';
import 'package:flutter_structure/features/main_structure/data/data_sources/main_structure_data_source.dart';
import 'package:flutter_structure/features/main_structure/data/data_sources/main_structure_data_source_impl.dart';
import 'package:flutter_structure/features/main_structure/data/main_structure_repository_impl.dart';
import 'package:flutter_structure/features/main_structure/domain/main_structure_repository.dart';
import 'package:flutter_structure/features/main_structure/main_view_model.dart';
import 'package:flutter_structure/features/profile/data/data_sources/profile_remote_data_source.dart';
import 'package:flutter_structure/features/profile/data/data_sources/profile_remote_data_source_impl.dart';
import 'package:flutter_structure/features/profile/data/profile_repository_impl.dart';
import 'package:flutter_structure/features/profile/domain/profile_repository.dart';
import 'package:flutter_structure/features/profile/presentation/view_models/profile_view_model.dart';
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
