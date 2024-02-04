import 'package:duckma_crow_flutter/duckma_crow_flutter.dart';

class StepDialogEntity extends Entity {
  const StepDialogEntity({
    required this.title,
    required this.points,
    required this.action,
  });

  final String title;
  final int points;
  final action;
}
