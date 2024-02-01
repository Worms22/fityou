// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'body_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BodyModel _$BodyModelFromJson(Map<String, dynamic> json) => BodyModel(
      bmi: (json['bmi'] as List<dynamic>)
          .map((e) => StepModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      pushUps: (json['pushUps'] as List<dynamic>)
          .map((e) => StepModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      run: (json['run'] as List<dynamic>)
          .map((e) => StepModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      sport: (json['sport'] as List<dynamic>)
          .map((e) => StepModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      walk: (json['walk'] as List<dynamic>)
          .map((e) => StepModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BodyModelToJson(BodyModel instance) => <String, dynamic>{
      'bmi': instance.bmi,
      'pushUps': instance.pushUps,
      'run': instance.run,
      'sport': instance.sport,
      'walk': instance.walk,
    };
