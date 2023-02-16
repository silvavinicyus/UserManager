import 'package:flutter/material.dart';
import 'package:user_crud/user/data/repositories/user_repository.dart';

class ListUsersPage extends StatefulWidget {
  const ListUsersPage({super.key});

  @override
  State<ListUsersPage> createState() => _ListUsersPageState();
}

class _ListUsersPageState extends State<ListUsersPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          ...UserRepository.instance.users.map(
            (user) => Text(user.fullName ?? ''),
          )
        ],
      ),
    );
  }
}
