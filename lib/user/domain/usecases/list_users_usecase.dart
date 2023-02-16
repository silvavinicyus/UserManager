import 'package:user_crud/user/domain/entities/user_entity.dart';
import 'package:user_crud/user/domain/repositories/user_repository.dart';

class CreateUserUsecase {
  final IUserRepository userRepository;

  CreateUserUsecase({required this.userRepository});

  List<UserEntity> call() {
    return userRepository.listUsers();
  }
}
