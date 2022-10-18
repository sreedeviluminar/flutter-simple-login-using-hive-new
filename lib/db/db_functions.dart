import 'package:hive_flutter/hive_flutter.dart';
import 'package:simole_login_hive/models/user_model.dart';

class DBFunctions {
  //Singleton
  DBFunctions._internal();

  static DBFunctions instance = DBFunctions._internal();

  factory DBFunctions() {
    return instance;
  }
  //Add users
  Future<void> userSignup(UserModel user) async {
    final db = await Hive.openBox<UserModel>('user');
    db.put(user.id, user);
  }

  //getUsers
  Future<List<UserModel>> getUsers() async {
    final db = await Hive.openBox<UserModel>('user');
    
    return db.values.toList();
  }
}
