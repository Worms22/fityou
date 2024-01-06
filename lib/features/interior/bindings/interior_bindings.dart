import 'package:duckma_crow_flutter/duckma_crow_flutter.dart';
import 'package:fit_you/features/interior/data/data_sources/interior_remote_data_source.dart';
import 'package:fit_you/features/interior/data/data_sources/interior_remote_data_source_impl.dart';
import 'package:fit_you/features/interior/data/interior_repository_impl.dart';
import 'package:fit_you/features/interior/domain/interior_repository.dart';
import 'package:fit_you/features/interior/presentation/view_models/interior_view_model.dart';
import 'package:get/get.dart';


class InteriorBinding extends Binding {
  @override
  void dependencies() {
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
  }
}
