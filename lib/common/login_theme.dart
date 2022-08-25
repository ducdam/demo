import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';

class LoginStyle{
  static const inputBorder = BorderRadius.vertical(
    bottom: Radius.circular(10.0),
    top: Radius.circular(20.0),
  );

  LoginTheme loginTheme(){
    return  LoginTheme(
      primaryColor: Colors.white,
      accentColor: Colors.yellow,
      errorColor: Colors.deepOrange,
      titleStyle: const TextStyle(
        color: Colors.greenAccent,
        fontFamily: 'Quicksand',
        letterSpacing: 4,
      ),
      bodyStyle: const TextStyle(
        fontStyle: FontStyle.italic,
        decoration: TextDecoration.underline,
      ),
      textFieldStyle: const TextStyle(
        color: Colors.orange,
        shadows: [Shadow(color: Colors.white, blurRadius: 2)],
      ),
      buttonStyle: const TextStyle(
        fontWeight: FontWeight.w800,
        color: Colors.white,
      ),
      cardTheme: CardTheme(
        color: Colors.yellow.shade100,
        elevation: 5,
        margin: const EdgeInsets.only(top: 15),
        shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.circular(100.0)),
      ),
      inputTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.purple.withOpacity(.1),
        contentPadding: EdgeInsets.zero,
        errorStyle: const TextStyle(
          backgroundColor: Colors.orange,
          color: Colors.white,
        ),
        labelStyle: const TextStyle(fontSize: 12),
        enabledBorder: UnderlineInputBorder(
          borderSide:
          BorderSide(color: Colors.blue.shade700, width: 4),
          borderRadius: inputBorder,
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide:
          BorderSide(color: Colors.blue.shade400, width: 5),
          borderRadius: inputBorder,
        ),
        errorBorder: UnderlineInputBorder(
          borderSide:
          BorderSide(color: Colors.red.shade700, width: 7),
          borderRadius: inputBorder,
        ),
        focusedErrorBorder: UnderlineInputBorder(
          borderSide:
          BorderSide(color: Colors.red.shade400, width: 8),
          borderRadius: inputBorder,
        ),
        disabledBorder: const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey, width: 5),
          borderRadius: inputBorder,
        ),
      ),
      buttonTheme: LoginButtonTheme(
        splashColor: Colors.purple,
        backgroundColor: Colors.pinkAccent,
        highlightColor: Colors.lightGreen,
        elevation: 9.0,
        highlightElevation: 6.0,
        // shape: BeveledRectangleBorder(
        //   borderRadius: BorderRadius.circular(10),
        // ),
        // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        // shape: CircleBorder(side: BorderSide(color: Colors.green)),
        shape: ContinuousRectangleBorder(
            borderRadius: BorderRadius.circular(55.0)),
      ),
    );
  }
}

final loginStyle = LoginStyle();