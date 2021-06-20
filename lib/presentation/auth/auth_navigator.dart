import 'package:employee/presentation/screens/authscren.dart';
import 'package:employee/presentation/screens/homepage.dart';
import 'package:employee/presentation/screens/splashscreen.dart';
import 'package:employee_shared/employee_shared.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AuthNavigator extends StatelessWidget {
  final Widget child;

  const AuthNavigator({Key key, this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<AuthWatcherBloc, AuthWatcherState>(
          listener: (context, state) {
            state.map(
              initial: (_) {
                debugPrint("state is initial");
                Navigator.pushReplacement(context,
                    CupertinoPageRoute(builder: (context) => SplashScreen()));
              },
              authenticated: (authUser) {
                debugPrint("state is authenticated");
                Future.delayed(
                  const Duration(milliseconds: 2000),
                  () {
                    Navigator.pushReplacement(context,
                        CupertinoPageRoute(builder: (context) => Homepage()));
                  },
                );
              },
              unauthenticated: (_) {
                debugPrint("state is unauthenticated");
                Future.delayed(
                  const Duration(milliseconds: 2000),
                  () {
                    Navigator.pushReplacement(
                        context,
                        CupertinoPageRoute(
                            builder: (context) => AuthenticationScreen()));
                  },
                );
              },
            );
          },
        ),
      ],
      child: child,
    );
  }
}
