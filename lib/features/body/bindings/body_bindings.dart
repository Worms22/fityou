import 'package:crow/crow.dart';
import 'package:flutter_structure/features/body/data/data_sources/body_remote_data_source.dart';
import 'package:flutter_structure/features/body/data/data_sources/body_remote_data_source_impl.dart';
import 'package:flutter_structure/features/body/data/body_repository_impl.dart';
import 'package:flutter_structure/features/body/domain/body_repository.dart';
import 'package:flutter_structure/features/body/presentation/view_models/body_view_model.dart';
import 'package:get/get.dart';


class BodyBinding extends Binding {
  @override
  void dependencies() {
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
  }
}
