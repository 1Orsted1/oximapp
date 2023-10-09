import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:oximapp_v2/user_register/domain/i_user_register_facade.dart';

part 'user_register_event.dart';
part 'user_register_state.dart';
part 'user_register_bloc.freezed.dart';

@injectable
class UserRegisterBloc extends Bloc<UserRegisterEvent, UserRegisterState> {
  UserRegisterBloc(this._facade) : super(UserRegisterState.initial()) {
    on<_Create>(_createUser);
  }
  final IUserRegisterFacade _facade;
  Future<void> _createUser(
      UserRegisterEvent event, Emitter<UserRegisterState> emit) async {
    try {
      emit(state.copyWith(isLoading: true));
      final operationSuccessful = await _facade.registerUser(name: event.name);
      emit(state.copyWith(
          isLoading: false, operationCompleted: operationSuccessful));
    } catch (e) {
      print(e);
      emit(state.copyWith(isLoading: false, errorMessage: e.toString()));
    }
  }
}
