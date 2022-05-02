import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:midterm/services/authentication.dart';
import 'package:provider/provider.dart';

class HomeBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final User firebaseUser = Provider.of<User>(context);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(firebaseUser.displayName!),
          TextButton(
            child: Text('Sign Out'),
            onPressed: Authentication.handleLogout,
          )
        ],
      ),
    );
  }
}
