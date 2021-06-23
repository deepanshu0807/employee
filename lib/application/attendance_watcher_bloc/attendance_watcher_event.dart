part of 'attendance_watcher_bloc.dart';

@freezed
abstract class AttendanceWatcherEvent with _$AttendanceWatcherEvent {
  const factory AttendanceWatcherEvent.getAllAttendances(EmployeeUser user) =
      _GetAttendances;
  const factory AttendanceWatcherEvent.attendanceReceived(
          Either<InfraFailure, AttendanceList> attendanceList) =
      _AttendancesReceived;
}
