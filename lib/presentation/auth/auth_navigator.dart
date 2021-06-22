import 'package:employee/application/customer_details_form_bloc/user_details_form_bloc.dart';
import 'package:employee/presentation/screens/authscren.dart';
import 'package:employee/presentation/screens/homepage.dart';
import 'package:employee/presentation/screens/splashscreen.dart';
import 'package:employee_shared/employee_shared.dart';
import 'package:employee/application/user_details_watcher/user_details_watcher_bloc.dart';
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

                context.read<UserDetailsWatcherBloc>().add(
                    UserDetailsWatcherEvent.getMySavedDetails(authUser.user));
                context
                    .read<UserDetailsFormBloc>()
                    .add(UserDetailsFormEv.initializeUser(authUser.user));
                Future.delayed(
                  const Duration(milliseconds: 1500),
                  () {
                    Navigator.pushReplacement(context,
                        CupertinoPageRoute(builder: (context) => Homepage()));
                  },
                );
              },
              unauthenticated: (_) {
                debugPrint("state is unauthenticated");
                Future.delayed(
                  const Duration(milliseconds: 1500),
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
        BlocListener<UserDetailsWatcherBloc, UserDetailsWatcherState>(
          listener: (context, state) {
            state.map(
              initial: (_) {},
              loadInProgress: (_) {},
              loadFailure: (_) {},
              loadSuccess: (load) {
                debugPrint("StoreUser:${load.storeUser.name}");
                context
                    .read<UserDetailsFormBloc>()
                    .add(UserDetailsFormEv.initializeUser(load.storeUser));
              },
            );
          },
        ),
      ],
      child: child,
    );
  }
}
