part of 'attendance_watcher_bloc.dart';

@freezed
abstract class AttendanceWatcherState with _$AttendanceWatcherState {
  const factory AttendanceWatcherState.initial() = _Initial;
  const factory AttendanceWatcherState.loadInProgress() =
      _DataTransferInProgress;
  const factory AttendanceWatcherState.loadSuccess(
    AttendanceList attendanceList,
  ) = _LoadSuccess;
  const factory AttendanceWatcherState.loadFailure(InfraFailure failure) =
      _LoadFailure;
}
