import 'package:user_crud/user/domain/entities/user_entity.dart';
import 'package:user_crud/user/domain/repositories/user_repository.dart';

class UserRepository implements IUserRepository {
  late List<UserEntity> users;

  UserRepository._() {
    users = [];
  }

  static UserRepository? _instance;

  static void initSingleton() {
    _instance ??= UserRepository._();
  }

  static UserRepository get instance => _instance!;

  @override
  UserEntity createUser({
    required String email,
    required String fullName,
    required String phone,
    required String user,
    required String password,
  }) {
    final userEntity = UserEntity(
      email: email,
      fullName: fullName,
      phone: phone,
      user: user,
      password: password,
    );

    users.add(userEntity);

    return userEntity;
  }

  @override
  List<UserEntity> listUsers() => users;
}
