import 'package:flutter_structure/features/goal/data/data_sources/goal_remote_data_source.dart';
import 'package:flutter_structure/features/goal/domain/goal_repository.dart';

class GoalRepositoryImpl extends GoalRepository {
  GoalRepositoryImpl(this._remoteDataSource);

  final GoalRemoteDataSource _remoteDataSource;

}
