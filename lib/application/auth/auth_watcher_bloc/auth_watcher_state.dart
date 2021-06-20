part of 'auth_watcher_bloc.dart';

@freezed
abstract class AuthWatcherState with _$AuthWatcherState {
  const factory AuthWatcherState.initial() = _Initial;
  const factory AuthWatcherState.authenticated(EmployeeUser user) =
      _Authenticated;
  const factory AuthWatcherState.unauthenticated() = _Unauthenticated;
}
