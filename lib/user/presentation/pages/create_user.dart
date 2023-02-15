import 'package:flutter/material.dart';

class CreateUserPage extends StatefulWidget {
  const CreateUserPage({super.key});

  @override
  State<CreateUserPage> createState() => _CreateUserPageState();
}

class _CreateUserPageState extends State<CreateUserPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController userController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Criação de usuários'),
        centerTitle: true,
      ),
      body: Padding(
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
                  print('Novo usuário: ');
                  print(nameController.text);
                  print(emailController.text);
                  print(phoneController.text);
                  print(userController.text);
                  print(passwordController.text);
                },
              ),
              TextButton(
                child: const Text(
                  'Cancelar',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                onPressed: () {
                  passwordController.clear();
                  nameController.clear();
                  emailController.clear();
                  phoneController.clear();
                  userController.clear();
                  passwordController.clear();
                },
              )
            ],
          )
        ]),
      ),
    );
  }
}
