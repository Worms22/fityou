import 'package:duckma_crow_flutter/duckma_crow_flutter.dart';

class StepEntity extends Entity {
  const StepEntity({
    required this.title,
    required this.points,
  });

  final String title;
  final int points;
}
