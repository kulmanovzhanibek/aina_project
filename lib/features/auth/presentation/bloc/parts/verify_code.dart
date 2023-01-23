part of '../auth_bloc.dart';

extension VerifyCode on AuthBloc {
  Future<void> _verifyCode(
      VerifyCodeEvent event,
      Emitter<AuthState> emit,
      ) async {
    try {
      emit(const AuthState.loading());

      final token = await authRepository.verifyCode(event.phone!, event.code!);

      Hive.box('tokens').put('access', token.token);

      emit(AuthState.verifyCodeSuccess(token: token));
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
