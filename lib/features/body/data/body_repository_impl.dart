import 'package:fit_you/features/body/data/data_sources/body_remote_data_source.dart';
import 'package:fit_you/features/body/domain/body_repository.dart';

class BodyRepositoryImpl extends BodyRepository {
  BodyRepositoryImpl(this._remoteDataSource);

  final BodyRemoteDataSource _remoteDataSource;

}
