import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fit_you/features/body/data/data_sources/body_remote_data_source.dart';
import 'package:fit_you/features/body/data/models/body_model.dart';
import 'package:fit_you/features/body/data/models/step_model.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BodyRemoteDataSourceImpl extends BodyRemoteDataSource {
  @override
  Future<dynamic> getBodyDetails() async {
    //SIGN IN METHOD
    try {
      final CollectionReference users =
          FirebaseFirestore.instance.collection('bodyActivities');
      final DocumentSnapshot pushUps = await users.doc('pushUps').get();
      final DocumentSnapshot run = await users.doc('run').get();
      final DocumentSnapshot walk = await users.doc('walk').get();
      final DocumentSnapshot sport = await users.doc('walk').get();

      final Map<String, dynamic>? pushUpsData =
          pushUps.data() as Map<String, dynamic>?;
      final Map<String, dynamic>? runData = run.data() as Map<String, dynamic>?;
      final Map<String, dynamic>? walkData =
          walk.data() as Map<String, dynamic>?;
      final Map<String, dynamic>? sportData =
          sport.data() as Map<String, dynamic>?;


      final BodyModel bodyModel = BodyModel(bmi: [], pushUps: [
        StepModel.fromJson(pushUpsData?['step1']),
        StepModel.fromJson(pushUpsData?['step2']),
        StepModel.fromJson(pushUpsData?['step3']),
      ], run: <StepModel>[
        StepModel.fromJson(runData?['step1']),
        StepModel.fromJson(runData?['step2']),
        StepModel.fromJson(runData?['step3']),
      ], sport: [
        StepModel.fromJson(sportData?['step1']),
        StepModel.fromJson(sportData?['step2']),
        StepModel.fromJson(sportData?['step3']),
      ], walk: [
        StepModel.fromJson(walkData?['step1']),
        StepModel.fromJson(walkData?['step2']),
        StepModel.fromJson(walkData?['step3']),
      ]);

      return bodyModel.toEntity();
    } on FirebaseAuthException catch (e) {
      return null;
    }
  }
}
