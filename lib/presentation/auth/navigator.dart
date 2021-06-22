import 'package:employee/presentation/auth/auth_navigator.dart';
import 'package:employee/presentation/screens/authscren.dart';
import 'package:employee/presentation/screens/homepage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AppNavigator extends StatefulWidget {
  @override
  _AppNavigatorState createState() => _AppNavigatorState();
}

class _AppNavigatorState extends State<AppNavigator> {
  bool isSigned = false;

  @override
  void initState() {
    FirebaseAuth.instance.authStateChanges().listen((user) {
      if (user != null) {
        setState(() {
          isSigned = true;
        });
      } else {
        setState(() {
          isSigned = false;
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isSigned == false
          ? AuthenticationScreen()
          : AuthNavigator(child: Homepage()),
    );
  }
}
