import 'dart:async';

import 'package:employee/presentation/auth/auth_navigator.dart';
import 'package:employee/presentation/screens/authscren.dart';
import 'package:employee/presentation/screens/homepage.dart';
import 'package:employee/presentation/utils/utility.dart';
import 'package:employee/presentation/widgets/loading.dart';
import 'package:employee_shared/employee_shared.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // startTimer();
    super.initState();
  }

  // startTimer() {
  //   Timer(Duration(seconds: 2), changeScreen);
  // }

  // changeScreen() async {
  //   await Navigator.pushReplacement(context,
  //       CupertinoPageRoute(builder: (context) => AuthenticationScreen()));
  // }

  @override
  Widget build(BuildContext context) {
    return AuthNavigator(
      child: Scaffold(
        backgroundColor: primaryColor,
        body: Container(
          height: screenHeight(context),
          width: screenWidth(context),
          decoration: BoxDecoration(
            gradient: gradientDecoration,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  "Employee",
                  style: text50.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              verticalSpaceMedium20,
              Loading(),
            ],
          ),
        ),
      ),
    );
  }
}
