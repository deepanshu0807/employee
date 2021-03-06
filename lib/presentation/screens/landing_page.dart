import 'package:employee/application/user_details_watcher/user_details_watcher_bloc.dart';
import 'package:employee/presentation/screens/homepage.dart';
import 'package:employee/presentation/screens/profile_screen.dart';
import 'package:employee/presentation/utils/utility.dart';
import 'package:employee/presentation/widgets/loading.dart';
import 'package:employee_shared/employee_shared.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'attendance_list_widget.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: kPadding20.copyWith(top: 30),
        height: screenHeight(context),
        width: screenWidth(context),
        // decoration: BoxDecoration(
        //   gradient: gradientDecoration,
        // ),

        child: Column(
          children: [
            UserDataContainer(),
            verticalSpaceMedium30,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Row(
                mainAxisAlignment: mainSB,
                children: [
                  Expanded(
                    flex: 4,
                    child: Text(
                      "Date",
                      style: text18.copyWith(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Text(
                      "Time",
                      style: text18.copyWith(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Text(
                      "Record",
                      style: text18.copyWith(fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
            verticalSpaceMedium20,
            Expanded(
              child: AttendanceList(),
            )
          ],
        ),
      ),
    );
  }
}

class UserDataContainer extends StatelessWidget {
  const UserDataContainer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserDetailsWatcherBloc, UserDetailsWatcherState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => Center(child: Loading()),
          loadInProgress: (_) => Center(child: Loading()),
          loadFailure: (_) => Center(child: Loading()),
          loadSuccess: (user) {
            final data = user.storeUser;
            return Container(
              width: double.infinity,
              margin: kPadding10.copyWith(left: 0, right: 0),
              padding: kPadding10.copyWith(left: 20),
              decoration: containerDecoration(
                  Colors.white, primaryColor.withOpacity(0.7)),
              child: Row(
                mainAxisAlignment: mainSB,
                children: [
                  Column(
                    crossAxisAlignment: crossS,
                    children: [
                      Text(
                        data.name.getOrElse("NA"),
                        style: text22.copyWith(fontWeight: FontWeight.bold),
                        maxLines: 1,
                        overflow: ell,
                      ),
                      verticalSpaceMedium15,
                      Row(
                        children: [
                          OutlinedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  CupertinoPageRoute(
                                      builder: (context) => ProfileScreen(
                                            user: data,
                                          )));
                            },
                            style: OutlinedButton.styleFrom(
                              backgroundColor: primaryColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: kBorderR20,
                              ),
                              side: BorderSide(color: Colors.grey[200]),
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.edit_outlined,
                                  size: 18,
                                  color: Colors.black,
                                ),
                                horizontalSpaceTiny,
                                Text(
                                  "Profile",
                                  style: text16,
                                )
                              ],
                            ),
                          ),
                          horizontalSpaceTiny,
                          SignOutWidget(),
                        ],
                      )
                    ],
                  ),
                  Center(
                    child: Icon(
                      Icons.account_box_rounded,
                      color: Colors.grey[400],
                      size: 80.sp,
                    ),
                  )
                ],
              ),
            );
          },
        );
      },
    );
  }
}
