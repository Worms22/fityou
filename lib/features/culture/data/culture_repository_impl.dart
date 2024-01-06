import 'package:fit_you/features/culture/data/data_sources/culture_remote_data_source.dart';
import 'package:fit_you/features/culture/domain/culture_repository.dart';

class CultureRepositoryImpl extends CultureRepository {
  CultureRepositoryImpl(this._remoteDataSource);

  final CultureRemoteDataSource _remoteDataSource;

}
