import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fit_you/features/goal/data/data_sources/goal_remote_data_source.dart';
import 'package:shared_preferences/shared_preferences.dart';

class GoalRemoteDataSourceImpl extends GoalRemoteDataSource {
  @override
  Future<int?> getPoints() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    String? accessToken = await prefs.getString('jwt_token');
    try {
      var x = await FirebaseFirestore.instance
          .collection('profiles')
          .doc(accessToken).get().then(
            (DocumentSnapshot doc) {
          final Map<String, dynamic> data = doc.data() as Map<String, dynamic>;
            return data['points'];
        },
        onError: (e) => print("Error getting document: $e"),
      );
      print(x);
    } on FirebaseAuthException catch (e) {
      return null;
    }
  }

}
