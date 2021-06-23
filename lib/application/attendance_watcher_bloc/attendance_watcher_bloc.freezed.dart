// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'attendance_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AttendanceWatcherEventTearOff {
  const _$AttendanceWatcherEventTearOff();

// ignore: unused_element
  _GetAttendances getAllAttendances(EmployeeUser user) {
    return _GetAttendances(
      user,
    );
  }

// ignore: unused_element
  _AttendancesReceived attendanceReceived(
      Either<InfraFailure, AttendanceList> attendanceList) {
    return _AttendancesReceived(
      attendanceList,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AttendanceWatcherEvent = _$AttendanceWatcherEventTearOff();

/// @nodoc
mixin _$AttendanceWatcherEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getAllAttendances(EmployeeUser user),
    @required
        Result attendanceReceived(
            Either<InfraFailure, AttendanceList> attendanceList),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getAllAttendances(EmployeeUser user),
    Result attendanceReceived(
        Either<InfraFailure, AttendanceList> attendanceList),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getAllAttendances(_GetAttendances value),
    @required Result attendanceReceived(_AttendancesReceived value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getAllAttendances(_GetAttendances value),
    Result attendanceReceived(_AttendancesReceived value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $AttendanceWatcherEventCopyWith<$Res> {
  factory $AttendanceWatcherEventCopyWith(AttendanceWatcherEvent value,
          $Res Function(AttendanceWatcherEvent) then) =
      _$AttendanceWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AttendanceWatcherEventCopyWithImpl<$Res>
    implements $AttendanceWatcherEventCopyWith<$Res> {
  _$AttendanceWatcherEventCopyWithImpl(this._value, this._then);

  final AttendanceWatcherEvent _value;
  // ignore: unused_field
  final $Res Function(AttendanceWatcherEvent) _then;
}

/// @nodoc
abstract class _$GetAttendancesCopyWith<$Res> {
  factory _$GetAttendancesCopyWith(
          _GetAttendances value, $Res Function(_GetAttendances) then) =
      __$GetAttendancesCopyWithImpl<$Res>;
  $Res call({EmployeeUser user});

  $EmployeeUserCopyWith<$Res> get user;
}

/// @nodoc
class __$GetAttendancesCopyWithImpl<$Res>
    extends _$AttendanceWatcherEventCopyWithImpl<$Res>
    implements _$GetAttendancesCopyWith<$Res> {
  __$GetAttendancesCopyWithImpl(
      _GetAttendances _value, $Res Function(_GetAttendances) _then)
      : super(_value, (v) => _then(v as _GetAttendances));

  @override
  _GetAttendances get _value => super._value as _GetAttendances;

  @override
  $Res call({
    Object user = freezed,
  }) {
    return _then(_GetAttendances(
      user == freezed ? _value.user : user as EmployeeUser,
    ));
  }

  @override
  $EmployeeUserCopyWith<$Res> get user {
    if (_value.user == null) {
      return null;
    }
    return $EmployeeUserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
class _$_GetAttendances implements _GetAttendances {
  const _$_GetAttendances(this.user) : assert(user != null);

  @override
  final EmployeeUser user;

  @override
  String toString() {
    return 'AttendanceWatcherEvent.getAllAttendances(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GetAttendances &&
            (identical(other.user, user) ||
                const DeepCollectionEquality().equals(other.user, user)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(user);

  @override
  _$GetAttendancesCopyWith<_GetAttendances> get copyWith =>
      __$GetAttendancesCopyWithImpl<_GetAttendances>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getAllAttendances(EmployeeUser user),
    @required
        Result attendanceReceived(
            Either<InfraFailure, AttendanceList> attendanceList),
  }) {
    assert(getAllAttendances != null);
    assert(attendanceReceived != null);
    return getAllAttendances(user);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getAllAttendances(EmployeeUser user),
    Result attendanceReceived(
        Either<InfraFailure, AttendanceList> attendanceList),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getAllAttendances != null) {
      return getAllAttendances(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getAllAttendances(_GetAttendances value),
    @required Result attendanceReceived(_AttendancesReceived value),
  }) {
    assert(getAllAttendances != null);
    assert(attendanceReceived != null);
    return getAllAttendances(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getAllAttendances(_GetAttendances value),
    Result attendanceReceived(_AttendancesReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getAllAttendances != null) {
      return getAllAttendances(this);
    }
    return orElse();
  }
}

abstract class _GetAttendances implements AttendanceWatcherEvent {
  const factory _GetAttendances(EmployeeUser user) = _$_GetAttendances;

  EmployeeUser get user;
  _$GetAttendancesCopyWith<_GetAttendances> get copyWith;
}

/// @nodoc
abstract class _$AttendancesReceivedCopyWith<$Res> {
  factory _$AttendancesReceivedCopyWith(_AttendancesReceived value,
          $Res Function(_AttendancesReceived) then) =
      __$AttendancesReceivedCopyWithImpl<$Res>;
  $Res call({Either<InfraFailure, AttendanceList> attendanceList});
}

/// @nodoc
class __$AttendancesReceivedCopyWithImpl<$Res>
    extends _$AttendanceWatcherEventCopyWithImpl<$Res>
    implements _$AttendancesReceivedCopyWith<$Res> {
  __$AttendancesReceivedCopyWithImpl(
      _AttendancesReceived _value, $Res Function(_AttendancesReceived) _then)
      : super(_value, (v) => _then(v as _AttendancesReceived));

  @override
  _AttendancesReceived get _value => super._value as _AttendancesReceived;

  @override
  $Res call({
    Object attendanceList = freezed,
  }) {
    return _then(_AttendancesReceived(
      attendanceList == freezed
          ? _value.attendanceList
          : attendanceList as Either<InfraFailure, AttendanceList>,
    ));
  }
}

/// @nodoc
class _$_AttendancesReceived implements _AttendancesReceived {
  const _$_AttendancesReceived(this.attendanceList)
      : assert(attendanceList != null);

  @override
  final Either<InfraFailure, AttendanceList> attendanceList;

  @override
  String toString() {
    return 'AttendanceWatcherEvent.attendanceReceived(attendanceList: $attendanceList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AttendancesReceived &&
            (identical(other.attendanceList, attendanceList) ||
                const DeepCollectionEquality()
                    .equals(other.attendanceList, attendanceList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(attendanceList);

  @override
  _$AttendancesReceivedCopyWith<_AttendancesReceived> get copyWith =>
      __$AttendancesReceivedCopyWithImpl<_AttendancesReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getAllAttendances(EmployeeUser user),
    @required
        Result attendanceReceived(
            Either<InfraFailure, AttendanceList> attendanceList),
  }) {
    assert(getAllAttendances != null);
    assert(attendanceReceived != null);
    return attendanceReceived(attendanceList);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getAllAttendances(EmployeeUser user),
    Result attendanceReceived(
        Either<InfraFailure, AttendanceList> attendanceList),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (attendanceReceived != null) {
      return attendanceReceived(attendanceList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getAllAttendances(_GetAttendances value),
    @required Result attendanceReceived(_AttendancesReceived value),
  }) {
    assert(getAllAttendances != null);
    assert(attendanceReceived != null);
    return attendanceReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getAllAttendances(_GetAttendances value),
    Result attendanceReceived(_AttendancesReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (attendanceReceived != null) {
      return attendanceReceived(this);
    }
    return orElse();
  }
}

abstract class _AttendancesReceived implements AttendanceWatcherEvent {
  const factory _AttendancesReceived(
          Either<InfraFailure, AttendanceList> attendanceList) =
      _$_AttendancesReceived;

  Either<InfraFailure, AttendanceList> get attendanceList;
  _$AttendancesReceivedCopyWith<_AttendancesReceived> get copyWith;
}

/// @nodoc
class _$AttendanceWatcherStateTearOff {
  const _$AttendanceWatcherStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _DataTransferInProgress loadInProgress() {
    return const _DataTransferInProgress();
  }

// ignore: unused_element
  _LoadSuccess loadSuccess(AttendanceList attendanceList) {
    return _LoadSuccess(
      attendanceList,
    );
  }

// ignore: unused_element
  _LoadFailure loadFailure(InfraFailure<dynamic> failure) {
    return _LoadFailure(
      failure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $AttendanceWatcherState = _$AttendanceWatcherStateTearOff();

/// @nodoc
mixin _$AttendanceWatcherState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(AttendanceList attendanceList),
    @required Result loadFailure(InfraFailure<dynamic> failure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(AttendanceList attendanceList),
    Result loadFailure(InfraFailure<dynamic> failure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_DataTransferInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_DataTransferInProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $AttendanceWatcherStateCopyWith<$Res> {
  factory $AttendanceWatcherStateCopyWith(AttendanceWatcherState value,
          $Res Function(AttendanceWatcherState) then) =
      _$AttendanceWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AttendanceWatcherStateCopyWithImpl<$Res>
    implements $AttendanceWatcherStateCopyWith<$Res> {
  _$AttendanceWatcherStateCopyWithImpl(this._value, this._then);

  final AttendanceWatcherState _value;
  // ignore: unused_field
  final $Res Function(AttendanceWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$AttendanceWatcherStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'AttendanceWatcherState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(AttendanceList attendanceList),
    @required Result loadFailure(InfraFailure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(AttendanceList attendanceList),
    Result loadFailure(InfraFailure<dynamic> failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_DataTransferInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_DataTransferInProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AttendanceWatcherState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$DataTransferInProgressCopyWith<$Res> {
  factory _$DataTransferInProgressCopyWith(_DataTransferInProgress value,
          $Res Function(_DataTransferInProgress) then) =
      __$DataTransferInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$DataTransferInProgressCopyWithImpl<$Res>
    extends _$AttendanceWatcherStateCopyWithImpl<$Res>
    implements _$DataTransferInProgressCopyWith<$Res> {
  __$DataTransferInProgressCopyWithImpl(_DataTransferInProgress _value,
      $Res Function(_DataTransferInProgress) _then)
      : super(_value, (v) => _then(v as _DataTransferInProgress));

  @override
  _DataTransferInProgress get _value => super._value as _DataTransferInProgress;
}

/// @nodoc
class _$_DataTransferInProgress implements _DataTransferInProgress {
  const _$_DataTransferInProgress();

  @override
  String toString() {
    return 'AttendanceWatcherState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DataTransferInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(AttendanceList attendanceList),
    @required Result loadFailure(InfraFailure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(AttendanceList attendanceList),
    Result loadFailure(InfraFailure<dynamic> failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_DataTransferInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_DataTransferInProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _DataTransferInProgress implements AttendanceWatcherState {
  const factory _DataTransferInProgress() = _$_DataTransferInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({AttendanceList attendanceList});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$AttendanceWatcherStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object attendanceList = freezed,
  }) {
    return _then(_LoadSuccess(
      attendanceList == freezed
          ? _value.attendanceList
          : attendanceList as AttendanceList,
    ));
  }
}

/// @nodoc
class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.attendanceList) : assert(attendanceList != null);

  @override
  final AttendanceList attendanceList;

  @override
  String toString() {
    return 'AttendanceWatcherState.loadSuccess(attendanceList: $attendanceList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.attendanceList, attendanceList) ||
                const DeepCollectionEquality()
                    .equals(other.attendanceList, attendanceList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(attendanceList);

  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(AttendanceList attendanceList),
    @required Result loadFailure(InfraFailure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(attendanceList);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(AttendanceList attendanceList),
    Result loadFailure(InfraFailure<dynamic> failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(attendanceList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_DataTransferInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_DataTransferInProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements AttendanceWatcherState {
  const factory _LoadSuccess(AttendanceList attendanceList) = _$_LoadSuccess;

  AttendanceList get attendanceList;
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({InfraFailure<dynamic> failure});

  $InfraFailureCopyWith<dynamic, $Res> get failure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$AttendanceWatcherStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(_LoadFailure(
      failure == freezed ? _value.failure : failure as InfraFailure<dynamic>,
    ));
  }

  @override
  $InfraFailureCopyWith<dynamic, $Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $InfraFailureCopyWith<dynamic, $Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.failure) : assert(failure != null);

  @override
  final InfraFailure<dynamic> failure;

  @override
  String toString() {
    return 'AttendanceWatcherState.loadFailure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(AttendanceList attendanceList),
    @required Result loadFailure(InfraFailure<dynamic> failure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(AttendanceList attendanceList),
    Result loadFailure(InfraFailure<dynamic> failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_DataTransferInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(_LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_DataTransferInProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(_LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements AttendanceWatcherState {
  const factory _LoadFailure(InfraFailure<dynamic> failure) = _$_LoadFailure;

  InfraFailure<dynamic> get failure;
  _$LoadFailureCopyWith<_LoadFailure> get copyWith;
}
