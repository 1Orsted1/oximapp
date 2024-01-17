part of 'user_register_bloc.dart';

@freezed
class UserRegisterEvent with _$UserRegisterEvent {
  const factory UserRegisterEvent.create({required String name}) = _Create;
  const factory UserRegisterEvent.selectImage() = _SelectImage;
}
