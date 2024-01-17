// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_register_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserRegisterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) create,
    required TResult Function() selectImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? create,
    TResult? Function()? selectImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? create,
    TResult Function()? selectImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Create value) create,
    required TResult Function(_SelectImage value) selectImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Create value)? create,
    TResult? Function(_SelectImage value)? selectImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Create value)? create,
    TResult Function(_SelectImage value)? selectImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRegisterEventCopyWith<$Res> {
  factory $UserRegisterEventCopyWith(
          UserRegisterEvent value, $Res Function(UserRegisterEvent) then) =
      _$UserRegisterEventCopyWithImpl<$Res, UserRegisterEvent>;
}

/// @nodoc
class _$UserRegisterEventCopyWithImpl<$Res, $Val extends UserRegisterEvent>
    implements $UserRegisterEventCopyWith<$Res> {
  _$UserRegisterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CreateImplCopyWith<$Res> {
  factory _$$CreateImplCopyWith(
          _$CreateImpl value, $Res Function(_$CreateImpl) then) =
      __$$CreateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$CreateImplCopyWithImpl<$Res>
    extends _$UserRegisterEventCopyWithImpl<$Res, _$CreateImpl>
    implements _$$CreateImplCopyWith<$Res> {
  __$$CreateImplCopyWithImpl(
      _$CreateImpl _value, $Res Function(_$CreateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$CreateImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CreateImpl implements _Create {
  const _$CreateImpl({required this.name});

  @override
  final String name;

  @override
  String toString() {
    return 'UserRegisterEvent.create(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateImplCopyWith<_$CreateImpl> get copyWith =>
      __$$CreateImplCopyWithImpl<_$CreateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) create,
    required TResult Function() selectImage,
  }) {
    return create(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? create,
    TResult? Function()? selectImage,
  }) {
    return create?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? create,
    TResult Function()? selectImage,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Create value) create,
    required TResult Function(_SelectImage value) selectImage,
  }) {
    return create(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Create value)? create,
    TResult? Function(_SelectImage value)? selectImage,
  }) {
    return create?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Create value)? create,
    TResult Function(_SelectImage value)? selectImage,
    required TResult orElse(),
  }) {
    if (create != null) {
      return create(this);
    }
    return orElse();
  }
}

abstract class _Create implements UserRegisterEvent {
  const factory _Create({required final String name}) = _$CreateImpl;

  String get name;
  @JsonKey(ignore: true)
  _$$CreateImplCopyWith<_$CreateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectImageImplCopyWith<$Res> {
  factory _$$SelectImageImplCopyWith(
          _$SelectImageImpl value, $Res Function(_$SelectImageImpl) then) =
      __$$SelectImageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SelectImageImplCopyWithImpl<$Res>
    extends _$UserRegisterEventCopyWithImpl<$Res, _$SelectImageImpl>
    implements _$$SelectImageImplCopyWith<$Res> {
  __$$SelectImageImplCopyWithImpl(
      _$SelectImageImpl _value, $Res Function(_$SelectImageImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SelectImageImpl implements _SelectImage {
  const _$SelectImageImpl();

  @override
  String toString() {
    return 'UserRegisterEvent.selectImage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SelectImageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) create,
    required TResult Function() selectImage,
  }) {
    return selectImage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name)? create,
    TResult? Function()? selectImage,
  }) {
    return selectImage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? create,
    TResult Function()? selectImage,
    required TResult orElse(),
  }) {
    if (selectImage != null) {
      return selectImage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Create value) create,
    required TResult Function(_SelectImage value) selectImage,
  }) {
    return selectImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Create value)? create,
    TResult? Function(_SelectImage value)? selectImage,
  }) {
    return selectImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Create value)? create,
    TResult Function(_SelectImage value)? selectImage,
    required TResult orElse(),
  }) {
    if (selectImage != null) {
      return selectImage(this);
    }
    return orElse();
  }
}

abstract class _SelectImage implements UserRegisterEvent {
  const factory _SelectImage() = _$SelectImageImpl;
}

/// @nodoc
mixin _$UserRegisterState {
  bool get isLoading => throw _privateConstructorUsedError;
  bool get operationCompleted => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  Uint8List? get image => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserRegisterStateCopyWith<UserRegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRegisterStateCopyWith<$Res> {
  factory $UserRegisterStateCopyWith(
          UserRegisterState value, $Res Function(UserRegisterState) then) =
      _$UserRegisterStateCopyWithImpl<$Res, UserRegisterState>;
  @useResult
  $Res call(
      {bool isLoading,
      bool operationCompleted,
      String errorMessage,
      String userName,
      Uint8List? image});
}

/// @nodoc
class _$UserRegisterStateCopyWithImpl<$Res, $Val extends UserRegisterState>
    implements $UserRegisterStateCopyWith<$Res> {
  _$UserRegisterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? operationCompleted = null,
    Object? errorMessage = null,
    Object? userName = null,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      operationCompleted: null == operationCompleted
          ? _value.operationCompleted
          : operationCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserRegisterStateImplCopyWith<$Res>
    implements $UserRegisterStateCopyWith<$Res> {
  factory _$$UserRegisterStateImplCopyWith(_$UserRegisterStateImpl value,
          $Res Function(_$UserRegisterStateImpl) then) =
      __$$UserRegisterStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      bool operationCompleted,
      String errorMessage,
      String userName,
      Uint8List? image});
}

/// @nodoc
class __$$UserRegisterStateImplCopyWithImpl<$Res>
    extends _$UserRegisterStateCopyWithImpl<$Res, _$UserRegisterStateImpl>
    implements _$$UserRegisterStateImplCopyWith<$Res> {
  __$$UserRegisterStateImplCopyWithImpl(_$UserRegisterStateImpl _value,
      $Res Function(_$UserRegisterStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? operationCompleted = null,
    Object? errorMessage = null,
    Object? userName = null,
    Object? image = freezed,
  }) {
    return _then(_$UserRegisterStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      operationCompleted: null == operationCompleted
          ? _value.operationCompleted
          : operationCompleted // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Uint8List?,
    ));
  }
}

/// @nodoc

class _$UserRegisterStateImpl implements _UserRegisterState {
  const _$UserRegisterStateImpl(
      {required this.isLoading,
      required this.operationCompleted,
      required this.errorMessage,
      required this.userName,
      this.image});

  @override
  final bool isLoading;
  @override
  final bool operationCompleted;
  @override
  final String errorMessage;
  @override
  final String userName;
  @override
  final Uint8List? image;

  @override
  String toString() {
    return 'UserRegisterState(isLoading: $isLoading, operationCompleted: $operationCompleted, errorMessage: $errorMessage, userName: $userName, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserRegisterStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.operationCompleted, operationCompleted) ||
                other.operationCompleted == operationCompleted) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoading, operationCompleted,
      errorMessage, userName, const DeepCollectionEquality().hash(image));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserRegisterStateImplCopyWith<_$UserRegisterStateImpl> get copyWith =>
      __$$UserRegisterStateImplCopyWithImpl<_$UserRegisterStateImpl>(
          this, _$identity);
}

abstract class _UserRegisterState implements UserRegisterState {
  const factory _UserRegisterState(
      {required final bool isLoading,
      required final bool operationCompleted,
      required final String errorMessage,
      required final String userName,
      final Uint8List? image}) = _$UserRegisterStateImpl;

  @override
  bool get isLoading;
  @override
  bool get operationCompleted;
  @override
  String get errorMessage;
  @override
  String get userName;
  @override
  Uint8List? get image;
  @override
  @JsonKey(ignore: true)
  _$$UserRegisterStateImplCopyWith<_$UserRegisterStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
