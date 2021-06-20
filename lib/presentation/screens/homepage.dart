import 'package:employee/presentation/auth/auth_navigator.dart';
import 'package:employee/presentation/utils/utility.dart';
import 'package:employee_shared/employee_shared.dart';
import 'package:flutter/material.dart';
import 'package:employee/application/user_details_watcher/user_details_watcher_bloc.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<UserDetailsWatcherBloc, UserDetailsWatcherState>(
              builder: (context, state) {
                return Text(
                  state.map(
                    initial: (a) => ".",
                    loadInProgress: (a) => "...",
                    loadFailure: (a) => "Load failed",
                    loadSuccess: (a) => a.storeUser.name.getOrElse("No Name"),
                  ),
                  style: text30,
                  textAlign: TextAlign.center,
                );
              },
            ),
            verticalSpaceLarge,
            AuthNavigator(
              child: BlocBuilder<AuthWatcherBloc, AuthWatcherState>(
                builder: (context, state) {
                  return InkWell(
                    onTap: state.map(
                      initial: (_) => null,
                      authenticated: (user) => () {
                        context
                            .read<AuthWatcherBloc>()
                            .add(AuthWatcherEvent.signedOut(user.user));
                      },
                      unauthenticated: (_) => null,
                    ),
                    child: Text(
                      'Sign out',
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
