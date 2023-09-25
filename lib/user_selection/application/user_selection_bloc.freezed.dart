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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getSignInStatus,
    TResult? Function(bool isLogged)? setSignInStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSignInStatus,
    TResult Function(bool isLogged)? setSignInStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_getSelectedUser value) getSignInStatus,
    required TResult Function(_setSelectedUser value) setSignInStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getSelectedUser value)? getSignInStatus,
    TResult? Function(_setSelectedUser value)? setSignInStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getSelectedUser value)? getSignInStatus,
    TResult Function(_setSelectedUser value)? setSignInStatus,
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
abstract class _$$_getSelectedUserCopyWith<$Res> {
  factory _$$_getSelectedUserCopyWith(
          _$_getSelectedUser value, $Res Function(_$_getSelectedUser) then) =
      __$$_getSelectedUserCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_getSelectedUserCopyWithImpl<$Res>
    extends _$UserSelectionEventCopyWithImpl<$Res, _$_getSelectedUser>
    implements _$$_getSelectedUserCopyWith<$Res> {
  __$$_getSelectedUserCopyWithImpl(
      _$_getSelectedUser _value, $Res Function(_$_getSelectedUser) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_getSelectedUser implements _getSelectedUser {
  const _$_getSelectedUser();

  @override
  String toString() {
    return 'UserSelectionEvent.getSignInStatus()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_getSelectedUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSignInStatus,
    required TResult Function(bool isLogged) setSignInStatus,
  }) {
    return getSignInStatus();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getSignInStatus,
    TResult? Function(bool isLogged)? setSignInStatus,
  }) {
    return getSignInStatus?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSignInStatus,
    TResult Function(bool isLogged)? setSignInStatus,
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
  }) {
    return getSignInStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getSelectedUser value)? getSignInStatus,
    TResult? Function(_setSelectedUser value)? setSignInStatus,
  }) {
    return getSignInStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getSelectedUser value)? getSignInStatus,
    TResult Function(_setSelectedUser value)? setSignInStatus,
    required TResult orElse(),
  }) {
    if (getSignInStatus != null) {
      return getSignInStatus(this);
    }
    return orElse();
  }
}

abstract class _getSelectedUser implements UserSelectionEvent {
  const factory _getSelectedUser() = _$_getSelectedUser;
}

/// @nodoc
abstract class _$$_setSelectedUserCopyWith<$Res> {
  factory _$$_setSelectedUserCopyWith(
          _$_setSelectedUser value, $Res Function(_$_setSelectedUser) then) =
      __$$_setSelectedUserCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isLogged});
}

/// @nodoc
class __$$_setSelectedUserCopyWithImpl<$Res>
    extends _$UserSelectionEventCopyWithImpl<$Res, _$_setSelectedUser>
    implements _$$_setSelectedUserCopyWith<$Res> {
  __$$_setSelectedUserCopyWithImpl(
      _$_setSelectedUser _value, $Res Function(_$_setSelectedUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLogged = null,
  }) {
    return _then(_$_setSelectedUser(
      isLogged: null == isLogged
          ? _value.isLogged
          : isLogged // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_setSelectedUser implements _setSelectedUser {
  const _$_setSelectedUser({required this.isLogged});

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
            other is _$_setSelectedUser &&
            (identical(other.isLogged, isLogged) ||
                other.isLogged == isLogged));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLogged);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_setSelectedUserCopyWith<_$_setSelectedUser> get copyWith =>
      __$$_setSelectedUserCopyWithImpl<_$_setSelectedUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getSignInStatus,
    required TResult Function(bool isLogged) setSignInStatus,
  }) {
    return setSignInStatus(isLogged);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getSignInStatus,
    TResult? Function(bool isLogged)? setSignInStatus,
  }) {
    return setSignInStatus?.call(isLogged);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getSignInStatus,
    TResult Function(bool isLogged)? setSignInStatus,
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
  }) {
    return setSignInStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getSelectedUser value)? getSignInStatus,
    TResult? Function(_setSelectedUser value)? setSignInStatus,
  }) {
    return setSignInStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getSelectedUser value)? getSignInStatus,
    TResult Function(_setSelectedUser value)? setSignInStatus,
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
      _$_setSelectedUser;

  bool get isLogged;
  @JsonKey(ignore: true)
  _$$_setSelectedUserCopyWith<_$_setSelectedUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserSelectionState {
  bool? get isLogged => throw _privateConstructorUsedError;

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
  $Res call({bool? isLogged});
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
  }) {
    return _then(_value.copyWith(
      isLogged: freezed == isLogged
          ? _value.isLogged
          : isLogged // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserSelectionStateCopyWith<$Res>
    implements $UserSelectionStateCopyWith<$Res> {
  factory _$$_UserSelectionStateCopyWith(_$_UserSelectionState value,
          $Res Function(_$_UserSelectionState) then) =
      __$$_UserSelectionStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? isLogged});
}

/// @nodoc
class __$$_UserSelectionStateCopyWithImpl<$Res>
    extends _$UserSelectionStateCopyWithImpl<$Res, _$_UserSelectionState>
    implements _$$_UserSelectionStateCopyWith<$Res> {
  __$$_UserSelectionStateCopyWithImpl(
      _$_UserSelectionState _value, $Res Function(_$_UserSelectionState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLogged = freezed,
  }) {
    return _then(_$_UserSelectionState(
      isLogged: freezed == isLogged
          ? _value.isLogged
          : isLogged // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_UserSelectionState implements _UserSelectionState {
  const _$_UserSelectionState({this.isLogged});

  @override
  final bool? isLogged;

  @override
  String toString() {
    return 'UserSelectionState(isLogged: $isLogged)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserSelectionState &&
            (identical(other.isLogged, isLogged) ||
                other.isLogged == isLogged));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLogged);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserSelectionStateCopyWith<_$_UserSelectionState> get copyWith =>
      __$$_UserSelectionStateCopyWithImpl<_$_UserSelectionState>(
          this, _$identity);
}

abstract class _UserSelectionState implements UserSelectionState {
  const factory _UserSelectionState({final bool? isLogged}) =
      _$_UserSelectionState;

  @override
  bool? get isLogged;
  @override
  @JsonKey(ignore: true)
  _$$_UserSelectionStateCopyWith<_$_UserSelectionState> get copyWith =>
      throw _privateConstructorUsedError;
}
