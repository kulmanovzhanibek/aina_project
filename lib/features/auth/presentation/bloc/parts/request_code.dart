part of '../auth_bloc.dart';

extension RequestCode on AuthBloc {
  Future<void> _requestCode(
      RequestCodeEvent event,
      Emitter<AuthState> emit,
      ) async {
    try {
      emit(const AuthState.loading());

      await authRepository.requestCode(event.phone!);

      emit(const AuthState.requestCodeSuccess());
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
