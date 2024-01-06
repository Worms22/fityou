import 'package:fit_you/features/goal/data/data_sources/goal_remote_data_source.dart';
import 'package:fit_you/features/goal/domain/goal_repository.dart';

class GoalRepositoryImpl extends GoalRepository {
  GoalRepositoryImpl(this._remoteDataSource);

  final GoalRemoteDataSource _remoteDataSource;

}
