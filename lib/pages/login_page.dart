import 'package:flutter/material.dart';
import 'package:flutter_firebase/common/login_theme.dart';
import 'package:flutter_firebase/cubits/login_cubit.dart';
import 'package:flutter_firebase/setup_locator.dart';
import 'package:flutter_login/flutter_login.dart';

import 'home_page.dart';

const users = {
  'dribbble@gmail.com': '12345',
  'hunter@gmail.com': 'hunter',
};

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  final loginCubit = setup.getIt<LoginCubit>();

  Duration get loginTime => const Duration(milliseconds: 2250);

  Future<String?> _authUser(LoginData data) {
    debugPrint('Name: ${data.name}, Password: ${data.password}');
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(data.name)) {
        return 'User not exists';
      }
      if (users[data.name] != data.password) {
        return 'Password does not match';
      }
      return null;
    });
  }

  Future<String?> _signupUser(SignupData data) {
    String? name = data.name;
    String? password = data.password;
    loginCubit.signUp(emailAddress: name!, password: password!);
    return Future.delayed(loginTime).then((_) {
      return null;
    });
  }

  Future<String> _recoverPassword(String name) {
    debugPrint('Name: $name');
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(name)) {
        return 'User not exists';
      }
      return '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return FlutterLogin(
      title: 'DEMO',
      onLogin: _authUser,
      onSignup: _signupUser,
      onSubmitAnimationCompleted: () {
        Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => const HomePage(),
        ));
      },
      onRecoverPassword: _recoverPassword,
      theme: loginStyle.loginTheme(),
    );
  }
}
