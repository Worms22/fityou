import 'package:flutter_structure/features/environment/data/data_sources/home_remote_data_source.dart';
import 'package:flutter_structure/features/environment/domain/home_repository.dart';

class EnvironmentRepositoryImpl extends EnvironmentRepository {
  EnvironmentRepositoryImpl(this._remoteDataSource);

  final EnvironmentRemoteDataSource _remoteDataSource;

}
