// import 'dart:io';
import 'package:console_app_signin_signup/console_app_signin_signup.dart';

void main() {
  bool isLoggedIn = false;

  while (true) {
    print('Welcome to the console application!');

    if (!isLoggedIn) {
      print('Please login:');
      // print('Username:');
      // String inputUsername = stdin.readLineSync()!.trim();
      String inputUsername = 'admin';
      // print('Password:');
      // String inputPassword = stdin.readLineSync()!.trim();
      String inputPassword = 'password';

      if (authenticateUser(inputUsername, inputPassword)) {
        isLoggedIn = true;
        print('Login successful!');
      } else {
        print('Invalid username or password. Please try again.');
        break;
      }
    } else {
      print('What would you like to do?');
      print('1. Logout');
      print('2. Exit application');
      // String? option = stdin.readLineSync();
      String option = '1';

      if (option == '1') {
        isLoggedIn = false;
        print('Logout successful!');
      } else if (option == '2') {
        break;
      } else {
        print('Invalid option. Please try again.');
      }
    }

    print('\n');
  }

  print('Application closed.');
}
