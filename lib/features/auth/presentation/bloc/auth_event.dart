part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.initial() = InitialEvent;
  const factory AuthEvent.requestCode(String? phone) = RequestCodeEvent;
  const factory AuthEvent.verifyCode(String? phone, String? code) = VerifyCodeEvent;
  const factory AuthEvent.logout() = LogoutEvent;
}
