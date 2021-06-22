part of 'user_details_form_bloc.dart';

@freezed
abstract class UserDetailsFormState with _$UserDetailsFormState {
  const factory UserDetailsFormState({
    @required EmployeeUser user,
    @required bool showErrorMessages,
    @required bool isSubmitting,
    @required Option<Either<InfraFailure, Unit>> saveFailureOrSuccessOption,
  }) = _UserDetailsFormState;

  factory UserDetailsFormState.initial() => UserDetailsFormState(
        user: EmployeeUser(
          uId: UniqueId(),
          name: Name(""),
          emailAddress: EmailAddress(""),
          phoneNumber: PhoneNumber(""),
          role: UserRole.employee(),
          lastSignInDateTime: DateTime.now(),
          isApproved: false,
        ),
        showErrorMessages: false,
        isSubmitting: false,
        saveFailureOrSuccessOption: none(),
      );
}
