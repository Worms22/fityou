import 'package:duckma_crow_flutter/duckma_crow_flutter.dart';
import 'package:fit_you/features/body/domain/entities/step_entity.dart';
import 'package:json_annotation/json_annotation.dart';

part 'step_model.g.dart';

@JsonSerializable()
class StepModel extends Model<StepEntity>{
  StepModel({
    required this.title,
    required this.points,
  });

  factory StepModel.fromJson(Map<String, dynamic> map) =>
      _$StepModelFromJson(map);

  final String title;
  final int points;

  @override
  Map<String, dynamic> toJson() => _$StepModelToJson(this);

  @override
  StepEntity toEntity() {
    return StepEntity(title: title, points: points);
  }
}
