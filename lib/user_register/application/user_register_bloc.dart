import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';

import '../domain/i_user_register_facade.dart';

part 'user_register_event.dart';
part 'user_register_state.dart';
part 'user_register_bloc.freezed.dart';

@injectable
class UserRegisterBloc extends Bloc<UserRegisterEvent, UserRegisterState> {
  UserRegisterBloc(this._facade) : super(UserRegisterState.initial()) {
    on<_Create>(_createUser);
    on<_SelectImage>(_selectImage);
  }
  final IUserRegisterFacade _facade;

  Future<void> _createUser(
      _Create event, Emitter<UserRegisterState> emit) async {
    try {
      emit(state.copyWith(isLoading: true));
      final String? encodedImage = _facade.encodeImage(imageBytes: state.image);
      final operationSuccessful = await _facade.registerUser(
        name: event.name,
        image: encodedImage,
      );
      emit(state.copyWith(
          isLoading: false, operationCompleted: operationSuccessful));
    } catch (e) {
      print(e);
      emit(state.copyWith(isLoading: false, errorMessage: e.toString()));
    }
  }

  Future<void> _selectImage(
      _SelectImage event, Emitter<UserRegisterState> emit) async {
    try {
      emit(state.copyWith(isLoading: true));
      final imagePicker = ImagePicker();
      XFile? pickedFile = await imagePicker.pickImage(
        source: ImageSource.gallery,
      );
      Uint8List? image = await pickedFile?.readAsBytes();
      emit(state.copyWith(isLoading: false, image: image));
    } catch (e) {
      print(e);
      emit(state.copyWith(isLoading: false, errorMessage: e.toString()));
    }
  }
}
