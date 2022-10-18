import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:simole_login_hive/models/user_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.email});
  final String email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome $email'),
      ),
    );
  }
}
