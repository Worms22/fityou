import 'package:flutter_structure/features/body/data/data_sources/body_remote_data_source.dart';
import 'package:flutter_structure/features/body/domain/body_repository.dart';

class BodyRepositoryImpl extends BodyRepository {
  BodyRepositoryImpl(this._remoteDataSource);

  final BodyRemoteDataSource _remoteDataSource;

}
