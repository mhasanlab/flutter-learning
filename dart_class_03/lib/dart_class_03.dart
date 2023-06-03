class UserModel {
  String? userName;
  String? passWord;
  UserModel(this.userName, this.passWord);
}

abstract class CreateUser {
  void addUser(UserModel userModel);
  void addAdmin(UserModel userModel);
  void checkPassWord(String password);
  void findUser(UserModel userModel);
}

class ImpCreateUser implements CreateUser {
  List<UserModel> userList = [];

  @override
  void addAdmin(UserModel userModel) {}

  @override
  void addUser(UserModel userModel) {}

  @override
  void checkPassWord(String password) {}

  @override
  void findUser(UserModel userModel) {}
}

class ImpAdminUser implements CreateUser {
  List<UserModel> adminList = [];

  @override
  void addAdmin(UserModel userModel) {}

  @override
  void addUser(UserModel userModel) {}

  @override
  void checkPassWord(String password) {}

  @override
  void findUser(UserModel userModel) {}
}
