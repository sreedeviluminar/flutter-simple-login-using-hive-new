import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:simole_login_hive/models/user_model.dart';
import 'screens/login.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
   Hive.registerAdapter(UserModelAdapter());
  await Hive.openBox<UserModel>('user');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: LoginScreen(),
      theme: ThemeData(scaffoldBackgroundColor: Colors.grey[200]),
    );
  }
}
