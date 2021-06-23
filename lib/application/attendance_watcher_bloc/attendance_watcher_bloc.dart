import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:employee_shared/domain/auth/attendance_list.dart';
import 'package:employee_shared/domain/auth/i_employeeuser_repo.dart';
import 'package:employee_shared/employee_shared.dart';
import 'package:dartz/dartz.dart';

part 'attendance_watcher_event.dart';
part 'attendance_watcher_state.dart';
part 'attendance_watcher_bloc.freezed.dart';

@injectable
class AttendanceWatcherBloc
    extends Bloc<AttendanceWatcherEvent, AttendanceWatcherState> {
  final IEmployeeUserRepo _iRepository;
  AttendanceWatcherBloc(this._iRepository)
      : super(const AttendanceWatcherState.initial());

  StreamSubscription streamSubscription;

  @override
  Stream<AttendanceWatcherState> mapEventToState(
    AttendanceWatcherEvent event,
  ) async* {
    yield* event.map(
      getAllAttendances: (e) async* {
        if (streamSubscription == null) {
          yield const AttendanceWatcherState.loadInProgress();
          _iRepository
              .getAttendanceList(e.user)
              .listen((c) => add(AttendanceWatcherEvent.attendanceReceived(c)));
        }
      },
      attendanceReceived: (e) async* {
        yield e.attendanceList.fold(
          (f) => AttendanceWatcherState.loadFailure(f),
          (c) => AttendanceWatcherState.loadSuccess(c),
        );
      },
    );
  }

  @override
  Future<void> close() {
    streamSubscription.cancel();
    return super.close();
  }
}
