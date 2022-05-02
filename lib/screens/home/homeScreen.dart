import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:midterm/screens/login/loginScreen.dart';
import './homebuilder.dart';

class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final User firebaseUser = Provider.of<User>(context);
    return Scaffold(body: (firebaseUser != null) ? HomeBuilder() : Login());
  }
}
