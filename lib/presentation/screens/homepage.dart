import 'package:employee/application/attendance_watcher_bloc/attendance_watcher_bloc.dart';
import 'package:employee/presentation/auth/auth_navigator.dart';
import 'package:employee/presentation/utils/utility.dart';
import 'package:employee/presentation/widgets/loading.dart';
import 'package:employee_shared/employee_shared.dart';
import 'package:flutter/material.dart';
import 'package:employee/application/user_details_watcher/user_details_watcher_bloc.dart';

import 'landing_page.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocBuilder<UserDetailsWatcherBloc, UserDetailsWatcherState>(
        builder: (context, state) {
          return state.map(
            initial: (_) => Center(child: Loading()),
            loadInProgress: (_) => Center(child: Loading()),
            loadFailure: (_) => Center(child: Loading()),
            loadSuccess: (user) {
              if (user.storeUser.isApproved == false) {
                return UnApprovedWidget(
                  user: user.storeUser,
                );
              } else {
                // context.read<AttendanceWatcherBloc>().add(
                //     AttendanceWatcherEvent.getAllAttendances(user.storeUser));
                return LandingPage();
              }
            },
          );
        },
      ),
    );
  }
}

class UnApprovedWidget extends StatelessWidget {
  final EmployeeUser user;
  const UnApprovedWidget({Key key, this.user}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: kPadding20,
      height: screenHeight(context),
      width: screenWidth(context),
      decoration: BoxDecoration(
        gradient: gradientDecoration,
      ),
      alignment: Alignment.center,
      child: Container(
        padding: kPadding20,
        margin: EdgeInsets.symmetric(vertical: 70.h, horizontal: 20.w),
        decoration: BoxDecoration(
          borderRadius: kBorderR20,
          color: Colors.white,
        ),
        child: ListView(
          children: [
            Text(
              "Welcome,",
              style: text20.copyWith(color: Colors.grey),
            ),
            verticalSpaceSmall,
            Text(
              user.name.getOrElse("NA"),
              maxLines: 2,
              style:
                  text30.copyWith(fontSize: 35.sp, fontWeight: FontWeight.bold),
              overflow: TextOverflow.ellipsis,
            ),
            verticalSpaceLarge,
            Divider(
              color: Colors.grey[800],
            ),
            verticalSpaceLarge,
            Text(
              "Your registeration is now successful.\n\nYou can use your account once it is approved by your administrator.\n\nCome back after some time.\n\nGood day!",
              style: text18.copyWith(color: Colors.grey[700]),
            ),
            verticalSpaceLarge,
            Divider(
              color: Colors.grey[800],
            ),
            verticalSpaceMedium15,
            SignOutWidget(),
          ],
        ),
      ),
    );
  }
}

class SignOutWidget extends StatelessWidget {
  const SignOutWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AuthNavigator(
      child: BlocBuilder<AuthWatcherBloc, AuthWatcherState>(
        builder: (context, state) {
          return state.map(
            initial: (_) => Loading(),
            authenticated: (user) {
              return InkWell(
                onTap: () {
                  context
                      .read<AuthWatcherBloc>()
                      .add(AuthWatcherEvent.signedOut(user.user));
                },
                child: Text(
                  'Sign out',
                  style: text22,
                ),
              );
            },
            unauthenticated: (_) => Loading(),
          );
        },
      ),
    );
  }
}
