import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:fit_you/features/base/utils/constants.dart';
import 'package:fit_you/features/signup/data/data_sources/signup_data_source.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class SignupDataSourceImpl extends SignupDataSource {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  User? get user => _auth.currentUser;

  //SIGN UP METHOD
  @override
  Future<bool> signup(String email, String password) async {
    try {
      var response = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      final String? token = user?.uid;

      final SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('jwt_token', token ?? '');
      await prefs.setString('email', email);
      return true;
    } on FirebaseAuthException catch (e) {
      return false;
    }
  }



  //SIGN OUT METHOD
  Future signOut() async {
    await _auth.signOut();

    print('signout');
  }



  /*
  Future<bool> signup(String email, String password) async {
    bool result = false;
    final Map<String, String> body = <String, String>{
      'grant_type': 'password',
      'email': email,
      'password': password,
    };

    await http
        .post(
      Uri.parse('$baseUrl/signup'),
      body: body,
    )
        .then((http.Response response) async {
      final int statusCode = response.statusCode;
      if (statusCode == 200) {
        final data = json.decode(response.body);
        final String token = data['jwt_token'];
        final SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setString('jwt_token', token);
        await prefs.setString('email', email);
        result = true;
      }
    });

    return result;
  }

   */
}
