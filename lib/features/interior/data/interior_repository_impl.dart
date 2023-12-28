import 'package:flutter_structure/features/interior/data/data_sources/interior_remote_data_source.dart';
import 'package:flutter_structure/features/interior/domain/interior_repository.dart';

class InteriorRepositoryImpl extends InteriorRepository {
  InteriorRepositoryImpl(this._remoteDataSource);

  final InteriorRemoteDataSource _remoteDataSource;

}
