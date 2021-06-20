import 'package:employee/presentation/auth/auth_navigator.dart';
import 'package:employee_shared/employee_shared.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: AuthNavigator(
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
      ),
    );
  }
}
