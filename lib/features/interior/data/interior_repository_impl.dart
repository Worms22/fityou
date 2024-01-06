import 'package:fit_you/features/interior/data/data_sources/interior_remote_data_source.dart';
import 'package:fit_you/features/interior/domain/interior_repository.dart';

class InteriorRepositoryImpl extends InteriorRepository {
  InteriorRepositoryImpl(this._remoteDataSource);

  final InteriorRemoteDataSource _remoteDataSource;

}
