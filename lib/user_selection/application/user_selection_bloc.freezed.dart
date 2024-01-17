// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_selection_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserSelectionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSignInStatus,
    required TResult Function(bool isLogged) setSignInStatus,
    required TResult Function() getAllUsers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getSignInStatus,
    TResult? Function(bool isLogged)? setSignInStatus,
    TResult? Function()? getAllUsers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSignInStatus,
    TResult Function(bool isLogged)? setSignInStatus,
    TResult Function()? getAllUsers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getSelectedUser value) getSignInStatus,
    required TResult Function(_setSelectedUser value) setSignInStatus,
    required TResult Function(_GetAllUsers value) getAllUsers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getSelectedUser value)? getSignInStatus,
    TResult? Function(_setSelectedUser value)? setSignInStatus,
    TResult? Function(_GetAllUsers value)? getAllUsers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getSelectedUser value)? getSignInStatus,
    TResult Function(_setSelectedUser value)? setSignInStatus,
    TResult Function(_GetAllUsers value)? getAllUsers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserSelectionEventCopyWith<$Res> {
  factory $UserSelectionEventCopyWith(
          UserSelectionEvent value, $Res Function(UserSelectionEvent) then) =
      _$UserSelectionEventCopyWithImpl<$Res, UserSelectionEvent>;
}

/// @nodoc
class _$UserSelectionEventCopyWithImpl<$Res, $Val extends UserSelectionEvent>
    implements $UserSelectionEventCopyWith<$Res> {
  _$UserSelectionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$getSelectedUserImplCopyWith<$Res> {
  factory _$$getSelectedUserImplCopyWith(_$getSelectedUserImpl value,
          $Res Function(_$getSelectedUserImpl) then) =
      __$$getSelectedUserImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$getSelectedUserImplCopyWithImpl<$Res>
    extends _$UserSelectionEventCopyWithImpl<$Res, _$getSelectedUserImpl>
    implements _$$getSelectedUserImplCopyWith<$Res> {
  __$$getSelectedUserImplCopyWithImpl(
      _$getSelectedUserImpl _value, $Res Function(_$getSelectedUserImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$getSelectedUserImpl implements _getSelectedUser {
  const _$getSelectedUserImpl();

  @override
  String toString() {
    return 'UserSelectionEvent.getSignInStatus()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$getSelectedUserImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSignInStatus,
    required TResult Function(bool isLogged) setSignInStatus,
    required TResult Function() getAllUsers,
  }) {
    return getSignInStatus();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getSignInStatus,
    TResult? Function(bool isLogged)? setSignInStatus,
    TResult? Function()? getAllUsers,
  }) {
    return getSignInStatus?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSignInStatus,
    TResult Function(bool isLogged)? setSignInStatus,
    TResult Function()? getAllUsers,
    required TResult orElse(),
  }) {
    if (getSignInStatus != null) {
      return getSignInStatus();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getSelectedUser value) getSignInStatus,
    required TResult Function(_setSelectedUser value) setSignInStatus,
    required TResult Function(_GetAllUsers value) getAllUsers,
  }) {
    return getSignInStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getSelectedUser value)? getSignInStatus,
    TResult? Function(_setSelectedUser value)? setSignInStatus,
    TResult? Function(_GetAllUsers value)? getAllUsers,
  }) {
    return getSignInStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getSelectedUser value)? getSignInStatus,
    TResult Function(_setSelectedUser value)? setSignInStatus,
    TResult Function(_GetAllUsers value)? getAllUsers,
    required TResult orElse(),
  }) {
    if (getSignInStatus != null) {
      return getSignInStatus(this);
    }
    return orElse();
  }
}

abstract class _getSelectedUser implements UserSelectionEvent {
  const factory _getSelectedUser() = _$getSelectedUserImpl;
}

/// @nodoc
abstract class _$$setSelectedUserImplCopyWith<$Res> {
  factory _$$setSelectedUserImplCopyWith(_$setSelectedUserImpl value,
          $Res Function(_$setSelectedUserImpl) then) =
      __$$setSelectedUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isLogged});
}

/// @nodoc
class __$$setSelectedUserImplCopyWithImpl<$Res>
    extends _$UserSelectionEventCopyWithImpl<$Res, _$setSelectedUserImpl>
    implements _$$setSelectedUserImplCopyWith<$Res> {
  __$$setSelectedUserImplCopyWithImpl(
      _$setSelectedUserImpl _value, $Res Function(_$setSelectedUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLogged = null,
  }) {
    return _then(_$setSelectedUserImpl(
      isLogged: null == isLogged
          ? _value.isLogged
          : isLogged // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$setSelectedUserImpl implements _setSelectedUser {
  const _$setSelectedUserImpl({required this.isLogged});

  @override
  final bool isLogged;

  @override
  String toString() {
    return 'UserSelectionEvent.setSignInStatus(isLogged: $isLogged)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$setSelectedUserImpl &&
            (identical(other.isLogged, isLogged) ||
                other.isLogged == isLogged));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLogged);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$setSelectedUserImplCopyWith<_$setSelectedUserImpl> get copyWith =>
      __$$setSelectedUserImplCopyWithImpl<_$setSelectedUserImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSignInStatus,
    required TResult Function(bool isLogged) setSignInStatus,
    required TResult Function() getAllUsers,
  }) {
    return setSignInStatus(isLogged);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getSignInStatus,
    TResult? Function(bool isLogged)? setSignInStatus,
    TResult? Function()? getAllUsers,
  }) {
    return setSignInStatus?.call(isLogged);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSignInStatus,
    TResult Function(bool isLogged)? setSignInStatus,
    TResult Function()? getAllUsers,
    required TResult orElse(),
  }) {
    if (setSignInStatus != null) {
      return setSignInStatus(isLogged);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getSelectedUser value) getSignInStatus,
    required TResult Function(_setSelectedUser value) setSignInStatus,
    required TResult Function(_GetAllUsers value) getAllUsers,
  }) {
    return setSignInStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getSelectedUser value)? getSignInStatus,
    TResult? Function(_setSelectedUser value)? setSignInStatus,
    TResult? Function(_GetAllUsers value)? getAllUsers,
  }) {
    return setSignInStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getSelectedUser value)? getSignInStatus,
    TResult Function(_setSelectedUser value)? setSignInStatus,
    TResult Function(_GetAllUsers value)? getAllUsers,
    required TResult orElse(),
  }) {
    if (setSignInStatus != null) {
      return setSignInStatus(this);
    }
    return orElse();
  }
}

abstract class _setSelectedUser implements UserSelectionEvent {
  const factory _setSelectedUser({required final bool isLogged}) =
      _$setSelectedUserImpl;

  bool get isLogged;
  @JsonKey(ignore: true)
  _$$setSelectedUserImplCopyWith<_$setSelectedUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetAllUsersImplCopyWith<$Res> {
  factory _$$GetAllUsersImplCopyWith(
          _$GetAllUsersImpl value, $Res Function(_$GetAllUsersImpl) then) =
      __$$GetAllUsersImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllUsersImplCopyWithImpl<$Res>
    extends _$UserSelectionEventCopyWithImpl<$Res, _$GetAllUsersImpl>
    implements _$$GetAllUsersImplCopyWith<$Res> {
  __$$GetAllUsersImplCopyWithImpl(
      _$GetAllUsersImpl _value, $Res Function(_$GetAllUsersImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAllUsersImpl implements _GetAllUsers {
  const _$GetAllUsersImpl();

  @override
  String toString() {
    return 'UserSelectionEvent.getAllUsers()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAllUsersImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSignInStatus,
    required TResult Function(bool isLogged) setSignInStatus,
    required TResult Function() getAllUsers,
  }) {
    return getAllUsers();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getSignInStatus,
    TResult? Function(bool isLogged)? setSignInStatus,
    TResult? Function()? getAllUsers,
  }) {
    return getAllUsers?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSignInStatus,
    TResult Function(bool isLogged)? setSignInStatus,
    TResult Function()? getAllUsers,
    required TResult orElse(),
  }) {
    if (getAllUsers != null) {
      return getAllUsers();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getSelectedUser value) getSignInStatus,
    required TResult Function(_setSelectedUser value) setSignInStatus,
    required TResult Function(_GetAllUsers value) getAllUsers,
  }) {
    return getAllUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getSelectedUser value)? getSignInStatus,
    TResult? Function(_setSelectedUser value)? setSignInStatus,
    TResult? Function(_GetAllUsers value)? getAllUsers,
  }) {
    return getAllUsers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getSelectedUser value)? getSignInStatus,
    TResult Function(_setSelectedUser value)? setSignInStatus,
    TResult Function(_GetAllUsers value)? getAllUsers,
    required TResult orElse(),
  }) {
    if (getAllUsers != null) {
      return getAllUsers(this);
    }
    return orElse();
  }
}

abstract class _GetAllUsers implements UserSelectionEvent {
  const factory _GetAllUsers() = _$GetAllUsersImpl;
}

/// @nodoc
mixin _$UserSelectionState {
  bool? get isLogged => throw _privateConstructorUsedError;
  List<User>? get users => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserSelectionStateCopyWith<UserSelectionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserSelectionStateCopyWith<$Res> {
  factory $UserSelectionStateCopyWith(
          UserSelectionState value, $Res Function(UserSelectionState) then) =
      _$UserSelectionStateCopyWithImpl<$Res, UserSelectionState>;
  @useResult
  $Res call({bool? isLogged, List<User>? users});
}

/// @nodoc
class _$UserSelectionStateCopyWithImpl<$Res, $Val extends UserSelectionState>
    implements $UserSelectionStateCopyWith<$Res> {
  _$UserSelectionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLogged = freezed,
    Object? users = freezed,
  }) {
    return _then(_value.copyWith(
      isLogged: freezed == isLogged
          ? _value.isLogged
          : isLogged // ignore: cast_nullable_to_non_nullable
              as bool?,
      users: freezed == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserSelectionStateImplCopyWith<$Res>
    implements $UserSelectionStateCopyWith<$Res> {
  factory _$$UserSelectionStateImplCopyWith(_$UserSelectionStateImpl value,
          $Res Function(_$UserSelectionStateImpl) then) =
      __$$UserSelectionStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? isLogged, List<User>? users});
}

/// @nodoc
class __$$UserSelectionStateImplCopyWithImpl<$Res>
    extends _$UserSelectionStateCopyWithImpl<$Res, _$UserSelectionStateImpl>
    implements _$$UserSelectionStateImplCopyWith<$Res> {
  __$$UserSelectionStateImplCopyWithImpl(_$UserSelectionStateImpl _value,
      $Res Function(_$UserSelectionStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLogged = freezed,
    Object? users = freezed,
  }) {
    return _then(_$UserSelectionStateImpl(
      isLogged: freezed == isLogged
          ? _value.isLogged
          : isLogged // ignore: cast_nullable_to_non_nullable
              as bool?,
      users: freezed == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<User>?,
    ));
  }
}

/// @nodoc

class _$UserSelectionStateImpl implements _UserSelectionState {
  const _$UserSelectionStateImpl({this.isLogged, final List<User>? users})
      : _users = users;

  @override
  final bool? isLogged;
  final List<User>? _users;
  @override
  List<User>? get users {
    final value = _users;
    if (value == null) return null;
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UserSelectionState(isLogged: $isLogged, users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserSelectionStateImpl &&
            (identical(other.isLogged, isLogged) ||
                other.isLogged == isLogged) &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isLogged, const DeepCollectionEquality().hash(_users));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserSelectionStateImplCopyWith<_$UserSelectionStateImpl> get copyWith =>
      __$$UserSelectionStateImplCopyWithImpl<_$UserSelectionStateImpl>(
          this, _$identity);
}

abstract class _UserSelectionState implements UserSelectionState {
  const factory _UserSelectionState(
      {final bool? isLogged,
      final List<User>? users}) = _$UserSelectionStateImpl;

  @override
  bool? get isLogged;
  @override
  List<User>? get users;
  @override
  @JsonKey(ignore: true)
  _$$UserSelectionStateImplCopyWith<_$UserSelectionStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
