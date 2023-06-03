bool authenticateUser(String username, String password) {
  String validUsername = 'admin';
  String validPassword = 'password';

  return username == validUsername && password == validPassword;
}
