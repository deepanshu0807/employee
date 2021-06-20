part of 'user_details_watcher_bloc.dart';

@freezed
abstract class UserDetailsWatcherEvent with _$UserDetailsWatcherEvent {
  const factory UserDetailsWatcherEvent.getMySavedDetails(
      EmployeeUser authUser) = _GetMySavedDetails;
  const factory UserDetailsWatcherEvent.mySavedDetailsReceived(
          Either<InfraFailure, EmployeeUser> storeUser, EmployeeUser authUser) =
      _MySavedDetailsReceived;
}
