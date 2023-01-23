part of '../auth_bloc.dart';

extension LogOut on AuthBloc {
  Future<void> _logout(
      LogoutEvent event,
      Emitter<AuthState> emit,
      ) async {
    try {
      emit(const AuthState.loading());

      await authRepository.logOut();

      Hive.box('tokens').delete('access');

      emit(const AuthState.logout());
    } catch (error) {
      if (error is DioError) {
        if (error.response?.statusCode == 500) {
          emit(AuthState.failure(
              failure: Failure.serverError(error.response?.data['message'])));
        } else {
          emit(const AuthState.failure(failure: Failure.general()));
        }
      }
    }
  }
}
