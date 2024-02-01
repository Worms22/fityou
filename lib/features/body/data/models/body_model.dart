import 'package:duckma_crow_flutter/duckma_crow_flutter.dart';
import 'package:fit_you/features/body/data/models/step_model.dart';
import 'package:fit_you/features/body/domain/entities/body_entity.dart';
import 'package:fit_you/features/body/domain/entities/step_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'body_model.g.dart';

@JsonSerializable()
class BodyModel extends Model<BodyEntity>{
  BodyModel({
    required this.bmi,
    required this.pushUps,
    required this.run,
    required this.sport,
    required this.walk,
  });

  factory BodyModel.fromJson(Map<String, dynamic> map) =>
      _$BodyModelFromJson(map);

  final List<StepModel> bmi;
  final List<StepModel> pushUps;
  final List<StepModel> run;
  final List<StepModel> sport;
  final List<StepModel> walk;

  @override
  Map<String, dynamic> toJson() => _$BodyModelToJson(this);

  @override
  BodyEntity toEntity() {
    return BodyEntity(
        bmi: bmi.map((element) => element.toEntity()).toList(),
        pushUps: pushUps.map((element) => element.toEntity()).toList(),
        run: run.map((element) => element.toEntity()).toList(),
        sport: sport.map((element) => element.toEntity()).toList(),
        walk: walk.map((element) => element.toEntity()).toList());
  }
}


