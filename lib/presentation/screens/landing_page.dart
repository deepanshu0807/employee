import 'package:employee/application/user_details_watcher/user_details_watcher_bloc.dart';
import 'package:employee/presentation/utils/utility.dart';
import 'package:employee/presentation/widgets/loading.dart';
import 'package:employee_shared/employee_shared.dart';
import 'package:flutter/material.dart';

import 'attendance_list_widget.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: kPadding20,
        height: screenHeight(context),
        width: screenWidth(context),
        decoration: BoxDecoration(
          gradient: gradientDecoration,
        ),
        child: Column(
          children: [
            UserDataContainer(),
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
            final dateTime = DateTime.now();
            final date = getFormattedDate(dateTime);
            final time = getFormattedTime(dateTime);
            return Container(
              width: double.infinity,
              margin: kPadding10.copyWith(left: 0, right: 0),
              padding: kPadding20,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: kBorderR10,
              ),
              child: Row(
                mainAxisAlignment: mainSB,
                children: [
                  Column(
                    crossAxisAlignment: crossS,
                    children: [
                      Text(
                        data.name.getOrElse("NA"),
                        style: text22.copyWith(fontWeight: FontWeight.bold),
                        maxLines: 2,
                        overflow: ell,
                      ),
                      verticalSpaceMedium15,
                      Row(
                        children: [
                          Icon(
                            Icons.calendar_today,
                            color: Colors.grey,
                          ),
                          horizontalSpaceSmall,
                          Text(
                            date,
                            style: text18,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.access_time,
                            color: Colors.grey,
                          ),
                          horizontalSpaceSmall,
                          Text(
                            time,
                            style: text18,
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    height: 100.h,
                    width: 100.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset(
                        "images/empty_profile.png",
                        fit: BoxFit.cover,
                      ),
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
