part of '../auth_bloc.dart';

extension Initial on AuthBloc {
  Future<void> _initial(InitialEvent event,
      Emitter<AuthState> emit,) async {
    emit(const AuthState.initial());
  }
}
