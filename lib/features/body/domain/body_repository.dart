import 'package:duckma_crow_flutter/duckma_crow_flutter.dart';


abstract class BodyRepository extends Repository {
  Future<dynamic> getBodyDetails(String email, String password);

}
