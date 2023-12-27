import 'package:crow/crow.dart';
import 'package:flutter_structure/features/culture/data/culture_repository_impl.dart';
import 'package:flutter_structure/features/culture/data/data_sources/culture_remote_data_source.dart';
import 'package:flutter_structure/features/culture/data/data_sources/culture_remote_data_source_impl.dart';
import 'package:flutter_structure/features/culture/domain/culture_repository.dart';
import 'package:flutter_structure/features/culture/presentation/view_models/culture_view_model.dart';
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
