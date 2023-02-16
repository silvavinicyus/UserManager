import 'package:flutter/material.dart';
import 'package:user_crud/user/data/repositories/user_repository.dart';
import 'package:user_crud/user/presentation/pages/list_users.dart';

import 'add_user.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  late PageController pageController;

  @override
  void initState() {
    super.initState();

    pageController = PageController();
    UserRepository.initSingleton();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Criação de usuários'),
        centerTitle: true,
      ),
      body: PageView(
        controller: pageController,
        children: [
          CreateUserPage(onTabTapped: onTabTapped),
          ListUsersPage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Criar Usuário',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Listar Usuários',
          ),
        ],
        onTap: onTabTapped,
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      pageController.animateToPage(index,
          duration: kThemeAnimationDuration, curve: Curves.linear);
      _currentIndex = index;
    });
  }
}
