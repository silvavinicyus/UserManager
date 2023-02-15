import 'package:flutter/material.dart';
import 'package:user_crud/user/presentation/pages/create_user.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CreateUserPage()
    );
  }
}
