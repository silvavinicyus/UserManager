import 'package:user_crud/user/domain/entities/user_entity.dart';

abstract class IUserRepository {
  UserEntity createUser({
    required String fullName,
    required String phone,
    required String user,
    required String password,
    required String email,
  });

  List<UserEntity> listUsers();
}
