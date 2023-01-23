part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = AuthStateInitial;
  const factory AuthState.loading() = AuthStateLoading;
  const factory AuthState.requestCodeSuccess() = AuthStateRequestCodeSuccess;
  const factory AuthState.verifyCodeSuccess({TokenModel? token}) = AuthStateVeirfyCodeSuccess;
  const factory AuthState.logout() = AuthStateLogoutSuccess;
  const factory AuthState.failure({Failure? failure}) = AuthFailure;
}
