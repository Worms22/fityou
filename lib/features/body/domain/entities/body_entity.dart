import 'package:duckma_crow_flutter/duckma_crow_flutter.dart';
import 'package:fit_you/features/body/domain/entities/step_entity.dart';

class BodyEntity extends Entity {
  const BodyEntity({
    required this.bmi,
    required this.pushUps,
    required this.run,
    required this.sport,
    required this.walk,
  });

  final List<StepEntity> bmi;
  final List<StepEntity> pushUps;
  final List<StepEntity> run;
  final List<StepEntity> sport;
  final List<StepEntity> walk;
}
