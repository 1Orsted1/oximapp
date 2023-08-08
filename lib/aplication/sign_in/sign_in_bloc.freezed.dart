// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignInEvent {
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
    required TResult Function(_getSignInStatus value) getSignInStatus,
    required TResult Function(_setSignInStatus value) setSignInStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getSignInStatus value)? getSignInStatus,
    TResult? Function(_setSignInStatus value)? setSignInStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getSignInStatus value)? getSignInStatus,
    TResult Function(_setSignInStatus value)? setSignInStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInEventCopyWith<$Res> {
  factory $SignInEventCopyWith(
          SignInEvent value, $Res Function(SignInEvent) then) =
      _$SignInEventCopyWithImpl<$Res, SignInEvent>;
}

/// @nodoc
class _$SignInEventCopyWithImpl<$Res, $Val extends SignInEvent>
    implements $SignInEventCopyWith<$Res> {
  _$SignInEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_getSignInStatusCopyWith<$Res> {
  factory _$$_getSignInStatusCopyWith(
          _$_getSignInStatus value, $Res Function(_$_getSignInStatus) then) =
      __$$_getSignInStatusCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_getSignInStatusCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$_getSignInStatus>
    implements _$$_getSignInStatusCopyWith<$Res> {
  __$$_getSignInStatusCopyWithImpl(
      _$_getSignInStatus _value, $Res Function(_$_getSignInStatus) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_getSignInStatus implements _getSignInStatus {
  const _$_getSignInStatus();

  @override
  String toString() {
    return 'SignInEvent.getSignInStatus()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_getSignInStatus);
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
    required TResult Function(_getSignInStatus value) getSignInStatus,
    required TResult Function(_setSignInStatus value) setSignInStatus,
  }) {
    return getSignInStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getSignInStatus value)? getSignInStatus,
    TResult? Function(_setSignInStatus value)? setSignInStatus,
  }) {
    return getSignInStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getSignInStatus value)? getSignInStatus,
    TResult Function(_setSignInStatus value)? setSignInStatus,
    required TResult orElse(),
  }) {
    if (getSignInStatus != null) {
      return getSignInStatus(this);
    }
    return orElse();
  }
}

abstract class _getSignInStatus implements SignInEvent {
  const factory _getSignInStatus() = _$_getSignInStatus;
}

/// @nodoc
abstract class _$$_setSignInStatusCopyWith<$Res> {
  factory _$$_setSignInStatusCopyWith(
          _$_setSignInStatus value, $Res Function(_$_setSignInStatus) then) =
      __$$_setSignInStatusCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isLogged});
}

/// @nodoc
class __$$_setSignInStatusCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res, _$_setSignInStatus>
    implements _$$_setSignInStatusCopyWith<$Res> {
  __$$_setSignInStatusCopyWithImpl(
      _$_setSignInStatus _value, $Res Function(_$_setSignInStatus) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLogged = null,
  }) {
    return _then(_$_setSignInStatus(
      isLogged: null == isLogged
          ? _value.isLogged
          : isLogged // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_setSignInStatus implements _setSignInStatus {
  const _$_setSignInStatus({required this.isLogged});

  @override
  final bool isLogged;

  @override
  String toString() {
    return 'SignInEvent.setSignInStatus(isLogged: $isLogged)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_setSignInStatus &&
            (identical(other.isLogged, isLogged) ||
                other.isLogged == isLogged));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLogged);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_setSignInStatusCopyWith<_$_setSignInStatus> get copyWith =>
      __$$_setSignInStatusCopyWithImpl<_$_setSignInStatus>(this, _$identity);

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
    required TResult Function(_getSignInStatus value) getSignInStatus,
    required TResult Function(_setSignInStatus value) setSignInStatus,
  }) {
    return setSignInStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_getSignInStatus value)? getSignInStatus,
    TResult? Function(_setSignInStatus value)? setSignInStatus,
  }) {
    return setSignInStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_getSignInStatus value)? getSignInStatus,
    TResult Function(_setSignInStatus value)? setSignInStatus,
    required TResult orElse(),
  }) {
    if (setSignInStatus != null) {
      return setSignInStatus(this);
    }
    return orElse();
  }
}

abstract class _setSignInStatus implements SignInEvent {
  const factory _setSignInStatus({required final bool isLogged}) =
      _$_setSignInStatus;

  bool get isLogged;
  @JsonKey(ignore: true)
  _$$_setSignInStatusCopyWith<_$_setSignInStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SignInState {
  bool? get isLogged => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInStateCopyWith<SignInState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInStateCopyWith<$Res> {
  factory $SignInStateCopyWith(
          SignInState value, $Res Function(SignInState) then) =
      _$SignInStateCopyWithImpl<$Res, SignInState>;
  @useResult
  $Res call({bool? isLogged});
}

/// @nodoc
class _$SignInStateCopyWithImpl<$Res, $Val extends SignInState>
    implements $SignInStateCopyWith<$Res> {
  _$SignInStateCopyWithImpl(this._value, this._then);

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
abstract class _$$_SignInStateCopyWith<$Res>
    implements $SignInStateCopyWith<$Res> {
  factory _$$_SignInStateCopyWith(
          _$_SignInState value, $Res Function(_$_SignInState) then) =
      __$$_SignInStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? isLogged});
}

/// @nodoc
class __$$_SignInStateCopyWithImpl<$Res>
    extends _$SignInStateCopyWithImpl<$Res, _$_SignInState>
    implements _$$_SignInStateCopyWith<$Res> {
  __$$_SignInStateCopyWithImpl(
      _$_SignInState _value, $Res Function(_$_SignInState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLogged = freezed,
  }) {
    return _then(_$_SignInState(
      isLogged: freezed == isLogged
          ? _value.isLogged
          : isLogged // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_SignInState implements _SignInState {
  const _$_SignInState({required this.isLogged});

  @override
  final bool? isLogged;

  @override
  String toString() {
    return 'SignInState(isLogged: $isLogged)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignInState &&
            (identical(other.isLogged, isLogged) ||
                other.isLogged == isLogged));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLogged);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignInStateCopyWith<_$_SignInState> get copyWith =>
      __$$_SignInStateCopyWithImpl<_$_SignInState>(this, _$identity);
}

abstract class _SignInState implements SignInState {
  const factory _SignInState({required final bool? isLogged}) = _$_SignInState;

  @override
  bool? get isLogged;
  @override
  @JsonKey(ignore: true)
  _$$_SignInStateCopyWith<_$_SignInState> get copyWith =>
      throw _privateConstructorUsedError;
}
