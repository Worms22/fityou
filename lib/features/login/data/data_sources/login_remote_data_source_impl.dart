import 'dart:convert';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fit_you/features/base/utils/constants.dart';
import 'package:fit_you/features/login/data/data_sources/login_remote_data_source.dart';
import 'package:fit_you/main.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class LoginRemoteDataSourceImpl extends LoginRemoteDataSource {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  get user => _auth.currentUser;

  @override
  Future<bool> login(String email, String password) async {
    //SIGN IN METHOD
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      final String? token = user?.uid;
      final SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('jwt_token', token ?? '');
      await prefs.setString('email', email);
      return true;
    } on FirebaseAuthException catch (e) {
      return false;
    }
  }
}
