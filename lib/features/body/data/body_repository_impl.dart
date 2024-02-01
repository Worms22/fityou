import 'package:fit_you/features/body/data/data_sources/body_remote_data_source.dart';
import 'package:fit_you/features/body/domain/body_repository.dart';

class BodyRepositoryImpl extends BodyRepository {
  BodyRepositoryImpl(this._remoteDataSource);

  final BodyRemoteDataSource _remoteDataSource;

  @override
  Future<dynamic> getBodyDetails(String email, String password) {
    return _remoteDataSource.getBodyDetails(email, password);
  }
}
