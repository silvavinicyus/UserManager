import 'package:user_crud/user/domain/entities/user_entity.dart';
import 'package:user_crud/user/domain/usecases/create_user_usecase.dart';

class UserController {
  final CreateUserUsecase createUserUseCase;

  UserController({required this.createUserUseCase});

  void createUser({
    required String fullName,
    required String email,
    required String phone,
    required String user,
    required String password,
  }) {
    createUserUseCase(
      fullName: fullName,
      email: email,
      phone: phone,
      user: user,
      password: password,
    );
  }
}
