import 'package:duckma_crow_flutter/duckma_crow_flutter.dart';
import 'package:fit_you/features/base/token/domain/entity/token_entity.dart';

abstract class TokenRepository extends Repository {
  Future<void> saveToken(TokenEntity token);

  Future<TokenEntity?> getToken();

  Future<void> deleteToken();
}
