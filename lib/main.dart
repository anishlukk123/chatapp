import 'package:chatapp/.screens/loginscreen.dart';
import 'package:chatapp/.screens/welcomescreen.dart';
import 'package:flutter/material.dart';

import '.screens/homepage.dart';
import '.screens/registration.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        debugShowCheckedModeBanner: false,
        home: HomePage(),
        initialRoute: 'welcome_screen',
        routes: {
          'welcome_screen': (context) => WelcomeScreen(),
          'registration_screen': (context) => RegistrationScreen(),
          'login_screen': (context) => LoginScreen(),
          'home_screen': (context) => HomePage()
        });
  }
}
