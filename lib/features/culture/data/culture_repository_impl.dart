import 'package:flutter_structure/features/culture/data/data_sources/culture_remote_data_source.dart';
import 'package:flutter_structure/features/culture/domain/culture_repository.dart';

class CultureRepositoryImpl extends CultureRepository {
  CultureRepositoryImpl(this._remoteDataSource);

  final CultureRemoteDataSource _remoteDataSource;

}
