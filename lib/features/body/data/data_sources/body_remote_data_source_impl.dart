import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fit_you/features/body/data/data_sources/body_remote_data_source.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class BodyRemoteDataSourceImpl extends BodyRemoteDataSource {

  @override
  Future<dynamic> getBodyDetails(String email, String password) async {
    //SIGN IN METHOD
    try {
      var x;
      CollectionReference users = FirebaseFirestore.instance.collection('bodyActivities');
      DocumentSnapshot y = await users.doc('pushUps').get();
      var z = y.data();
      DocumentSnapshot y7 = await users.doc('pushUpjjs').get();
      var z6 = y7.data();
      print(y);



      return true;
    } on FirebaseAuthException catch (e) {
      return false;
    }
  }

}
