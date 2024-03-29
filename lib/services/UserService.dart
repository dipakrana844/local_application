import 'dart:async';

import 'package:local_app/db_helper/repository.dart';
import 'package:local_app/model/User.dart';

class UserService {
  late Repository moRepository;

  UserService() {
    moRepository = Repository();
  }

  //Save User
  saveUser(User user) async {
    return await moRepository.insertData('users', user.userMap());
  }

  //Read All Users
  readAllUsers() async {
    return await moRepository.readData('users');
  }

  //Edit User
  updateUser(User user) async {
    return await moRepository.updateData('users', user.userMap());
  }

  deleteUser(userId) async {
    return await moRepository.deleteDataById('users', userId);
  }
  checkEmailVerify(String email) async{
    return await moRepository.checkEmail('users', email);
  }
}
