import 'package:flutter/material.dart';
import 'package:user_crud/user/data/repositories/user_repository.dart';
import 'package:user_crud/user/domain/usecases/create_user_usecase.dart';
import 'package:user_crud/user/presentation/controllers/user_controller.dart';

class CreateUserPage extends StatefulWidget {
  final void Function(int index) onTabTapped;
  const CreateUserPage({super.key, required this.onTabTapped});

  @override
  State<CreateUserPage> createState() => _CreateUserPageState();
}

class _CreateUserPageState extends State<CreateUserPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController userController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  late UserController controller;

  @override
  void initState() {
    super.initState();

    controller = UserController(
      createUserUseCase: CreateUserUsecase(
        userRepository: UserRepository.instance,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(children: [
          TextField(
            controller: nameController,
            decoration: const InputDecoration(
              label: Text('Nome do usuário'),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
            ),
          ),
          TextField(
            controller: emailController,
            decoration: const InputDecoration(
              label: Text('Email do usuário'),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
            ),
          ),
          TextField(
            controller: phoneController,
            decoration: const InputDecoration(
              label: Text('Numero de celular do usuário'),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
            ),
          ),
          TextField(
            controller: userController,
            decoration: const InputDecoration(
              label: Text('Usuário'),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
            ),
          ),
          TextField(
            controller: passwordController,
            obscureText: true,
            decoration: const InputDecoration(
              label: Text('Senha'),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextButton(
                child: const Text(
                  'Salvar',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                onPressed: () {
                  controller.createUser(
                    fullName: nameController.text,
                    email: emailController.text,
                    phone: phoneController.text,
                    user: userController.text,
                    password: passwordController.text,
                  );
                  clearInputs();
                  widget.onTabTapped(1);
                },
              ),
              TextButton(
                onPressed: clearInputs,
                child: const Text(
                  'Cancelar',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              )
            ],
          )
        ]),
      ),
    );
  }

  void clearInputs() {
    passwordController.clear();
    nameController.clear();
    emailController.clear();
    phoneController.clear();
    userController.clear();
    passwordController.clear();
  }
}
