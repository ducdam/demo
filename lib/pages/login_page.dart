import 'package:flutter/material.dart';
import 'package:flutter_firebase/common/login_theme.dart';
import 'package:flutter_firebase/controllers/login_controller.dart';
import 'package:flutter_firebase/setup_locator.dart';
import 'package:flutter_login/flutter_login.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  final loginController = setup.getIt<LoginController>();

  Duration get loginTime => const Duration(milliseconds: 2250);

  Future<String?> _authUser(LoginData data) {
    String? name = data.name;
    String? password = data.password;
    loginController.signIn(emailAddress: name, password: password);
    return Future.delayed(loginTime).then((_) {
      return null;
    });
  }

  Future<String?> _signupUser(SignupData data) {
    String? name = data.name;
    String? password = data.password;
    loginController.signUp(emailAddress: name!, password: password!);
    return Future.delayed(loginTime).then((_) {
      return null;
    });
  }

  Future<String> _recoverPassword(String name) {
    debugPrint('Name: $name');
    return Future.delayed(loginTime).then((_) {
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
        Navigator.of(context).pushNamed('/home');
      },
      onRecoverPassword: _recoverPassword,
      theme: loginStyle.loginTheme(),
    );
  }
}
