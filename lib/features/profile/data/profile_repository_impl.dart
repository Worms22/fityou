import 'package:fit_you/features/profile/data/data_sources/profile_remote_data_source.dart';
import 'package:fit_you/features/profile/domain/profile_repository.dart';

class ProfileRepositoryImpl extends ProfileRepository {
  ProfileRepositoryImpl(this._remoteDataSource);

  final ProfileRemoteDataSource _remoteDataSource;

}
