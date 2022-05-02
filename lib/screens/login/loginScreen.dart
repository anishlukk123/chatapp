import 'package:flutter/material.dart';
import 'package:midterm/services/authentication.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: FlatButton(
        child: Text('Sign in with Google'),
        onPressed: Authentication.handleLogin,
      ),
    ));
  }
}
