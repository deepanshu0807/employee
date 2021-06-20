import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:employee_shared/domain/auth/i_employeeuser_repo.dart';
import 'package:employee_shared/employee_shared.dart';
import 'package:meta/meta.dart';
import 'package:dartz/dartz.dart';

part 'user_details_watcher_event.dart';
part 'user_details_watcher_state.dart';
part 'user_details_watcher_bloc.freezed.dart';

@lazySingleton
class UserDetailsWatcherBloc
    extends Bloc<UserDetailsWatcherEvent, UserDetailsWatcherState> {
  final IEmployeeUserRepo iEmployeeUserRepo;
  UserDetailsWatcherBloc(this.iEmployeeUserRepo)
      : super(const UserDetailsWatcherState.initial());

  @override
  Stream<UserDetailsWatcherState> mapEventToState(
    UserDetailsWatcherEvent event,
  ) async* {
    yield* event.map(
      getMySavedDetails: (e) async* {
        yield const UserDetailsWatcherState.loadInProgress();
        iEmployeeUserRepo.getUser(e.authUser).listen((c) =>
            add(UserDetailsWatcherEvent.mySavedDetailsReceived(c, e.authUser)));
      },
      mySavedDetailsReceived: (e) async* {
        yield e.storeUser.fold(
          (f) {
            iEmployeeUserRepo.create(e.authUser);
            return UserDetailsWatcherState.loadFailure(f);
          },
          (c) {
            return UserDetailsWatcherState.loadSuccess(c);
          },
        );
      },
    );
  }
}
