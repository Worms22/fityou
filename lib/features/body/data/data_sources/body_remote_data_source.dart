import 'package:duckma_crow_flutter/duckma_crow_flutter.dart';

abstract class BodyRemoteDataSource extends RemoteDataSource {

  Future<dynamic> getBodyDetails(String email, String password);

}
