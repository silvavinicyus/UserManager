import 'package:user_crud/user/domain/entities/user_entity.dart';
import 'package:user_crud/user/domain/repositories/user_repository.dart';

class CreateUserUsecase {
  final IUserRepository userRepository;

  CreateUserUsecase({required this.userRepository});

  UserEntity call({
    required String email,
    required String fullName,
    required String phone,
    required String user,
    required String password,
  }) {
    return userRepository.createUser(
      email: email,
      fullName: fullName,
      phone: phone,
      user: user,
      password: password,
    );
  }
}
