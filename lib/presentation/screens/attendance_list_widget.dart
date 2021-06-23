import 'package:employee/application/attendance_watcher_bloc/attendance_watcher_bloc.dart';
import 'package:employee/presentation/utils/utility.dart';
import 'package:employee/presentation/widgets/loading.dart';
import 'package:employee_shared/domain/auth/attendance.dart';
import 'package:employee_shared/domain/auth/attendance_type.dart';
import 'package:employee_shared/employee_shared.dart';
import 'package:flutter/material.dart';

class AttendanceList extends StatefulWidget {
  const AttendanceList({Key key}) : super(key: key);

  @override
  _AttendanceListState createState() => _AttendanceListState();
}

class _AttendanceListState extends State<AttendanceList> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AttendanceWatcherBloc, AttendanceWatcherState>(
      builder: (context, state) {
        return state.map(
          initial: (_) => Loading(),
          loadInProgress: (_) => Loading(),
          loadFailure: (_) => const Center(
            child: Icon(
              Icons.error,
              color: Colors.red,
            ),
          ),
          loadSuccess: (attendace) {
            // print(attendace.attendanceList.allAttendance);
            final list = attendace.attendanceList.allAttendance;
            if (list.isEmpty) {
              return Center(
                child: Container(
                  alignment: Alignment.center,
                  height: 70,
                  child: Row(
                    mainAxisAlignment: mainC,
                    children: [
                      const Icon(
                        Icons.info,
                        color: Colors.grey,
                      ),
                      const Text("  No record"),
                    ],
                  ),
                ),
              );
            } else {
              return ListView.builder(
                itemCount: list.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  final thisAttendance = list[index];
                  return AttendanceListWidget(data: thisAttendance);
                },
              );
            }
          },
        );
      },
    );
  }
}

class AttendanceListWidget extends StatelessWidget {
  final Attendance data;
  const AttendanceListWidget({Key key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final date = getFormattedDate(data.dateTime);
    final time = getFormattedTime(data.dateTime);
    return Container(
      margin: kPadding10.copyWith(top: 5, bottom: 5),
      padding: kPadding20,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.white,
            Colors.white,
            data.type == AttendanceType.absent() ? Colors.red : Colors.green
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
        borderRadius: kBorderR20,
      ),
      child: Row(
        mainAxisAlignment: mainSB,
        children: [
          Row(
            children: [
              Icon(
                data.type == AttendanceType.present()
                    ? Icons.check
                    : Icons.close,
                color: data.type == AttendanceType.present()
                    ? Colors.green
                    : Colors.red,
              ),
              horizontalSpaceSmall,
              Text(
                date,
                style: text20,
              ),
            ],
          ),
          Text(
            data.type.toValueString(),
            style: text20.copyWith(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}
