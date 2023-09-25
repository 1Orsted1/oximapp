import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../domain/i_user_selection_facade.dart';

part 'user_selection_event.dart';
part 'user_selection_state.dart';
part 'user_selection_bloc.freezed.dart';

@injectable
class UserSelectionBloc extends Bloc<UserSelectionEvent, UserSelectionState> {
  UserSelectionBloc(this._facade) : super(UserSelectionState.initial()) {
    on<_getSelectedUser>(_getUser);
    on<_setSelectedUser>(_setUser);
  }
  final IUserSelectionFacade _facade;

  @postConstruct
  void init() {
    UserSelectionState.initialTest(isLogged: _facade.getSelectedUser());
  }

  Future<void> _getUser(
      _getSelectedUser event, Emitter<UserSelectionState> emit) async {
    final status = _facade.getSelectedUser();
    print('sign in status: $status');
    emit(state.copyWith(isLogged: status));
  }

  Future<void> _setUser(
      _setSelectedUser event, Emitter<UserSelectionState> emit) async {
    final status = await _facade.setSelectedUser(isLogged: event.isLogged);
    emit(state.copyWith(isLogged: event.isLogged));
  }
}
