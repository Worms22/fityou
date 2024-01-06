import 'package:duckma_crow_flutter/duckma_crow_flutter.dart';
import 'package:fit_you/features/culture/data/culture_repository_impl.dart';
import 'package:fit_you/features/culture/data/data_sources/culture_remote_data_source.dart';
import 'package:fit_you/features/culture/data/data_sources/culture_remote_data_source_impl.dart';
import 'package:fit_you/features/culture/domain/culture_repository.dart';
import 'package:fit_you/features/culture/presentation/view_models/culture_view_model.dart';
import 'package:get/get.dart';


class CultureBinding extends Binding {
  @override
  void dependencies() {
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
  }
}
