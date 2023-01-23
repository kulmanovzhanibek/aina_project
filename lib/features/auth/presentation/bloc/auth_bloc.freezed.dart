// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String? phone) requestCode,
    required TResult Function(String? phone, String? code) verifyCode,
    required TResult Function() logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String? phone)? requestCode,
    TResult? Function(String? phone, String? code)? verifyCode,
    TResult? Function()? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String? phone)? requestCode,
    TResult Function(String? phone, String? code)? verifyCode,
    TResult Function()? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialEvent value) initial,
    required TResult Function(RequestCodeEvent value) requestCode,
    required TResult Function(VerifyCodeEvent value) verifyCode,
    required TResult Function(LogoutEvent value) logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialEvent value)? initial,
    TResult? Function(RequestCodeEvent value)? requestCode,
    TResult? Function(VerifyCodeEvent value)? verifyCode,
    TResult? Function(LogoutEvent value)? logout,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialEvent value)? initial,
    TResult Function(RequestCodeEvent value)? requestCode,
    TResult Function(VerifyCodeEvent value)? verifyCode,
    TResult Function(LogoutEvent value)? logout,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialEventCopyWith<$Res> {
  factory _$$InitialEventCopyWith(
          _$InitialEvent value, $Res Function(_$InitialEvent) then) =
      __$$InitialEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$InitialEvent>
    implements _$$InitialEventCopyWith<$Res> {
  __$$InitialEventCopyWithImpl(
      _$InitialEvent _value, $Res Function(_$InitialEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialEvent implements InitialEvent {
  const _$InitialEvent();

  @override
  String toString() {
    return 'AuthEvent.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String? phone) requestCode,
    required TResult Function(String? phone, String? code) verifyCode,
    required TResult Function() logout,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String? phone)? requestCode,
    TResult? Function(String? phone, String? code)? verifyCode,
    TResult? Function()? logout,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String? phone)? requestCode,
    TResult Function(String? phone, String? code)? verifyCode,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialEvent value) initial,
    required TResult Function(RequestCodeEvent value) requestCode,
    required TResult Function(VerifyCodeEvent value) verifyCode,
    required TResult Function(LogoutEvent value) logout,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialEvent value)? initial,
    TResult? Function(RequestCodeEvent value)? requestCode,
    TResult? Function(VerifyCodeEvent value)? verifyCode,
    TResult? Function(LogoutEvent value)? logout,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialEvent value)? initial,
    TResult Function(RequestCodeEvent value)? requestCode,
    TResult Function(VerifyCodeEvent value)? verifyCode,
    TResult Function(LogoutEvent value)? logout,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialEvent implements AuthEvent {
  const factory InitialEvent() = _$InitialEvent;
}

/// @nodoc
abstract class _$$RequestCodeEventCopyWith<$Res> {
  factory _$$RequestCodeEventCopyWith(
          _$RequestCodeEvent value, $Res Function(_$RequestCodeEvent) then) =
      __$$RequestCodeEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String? phone});
}

/// @nodoc
class __$$RequestCodeEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$RequestCodeEvent>
    implements _$$RequestCodeEventCopyWith<$Res> {
  __$$RequestCodeEventCopyWithImpl(
      _$RequestCodeEvent _value, $Res Function(_$RequestCodeEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = freezed,
  }) {
    return _then(_$RequestCodeEvent(
      freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$RequestCodeEvent implements RequestCodeEvent {
  const _$RequestCodeEvent(this.phone);

  @override
  final String? phone;

  @override
  String toString() {
    return 'AuthEvent.requestCode(phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestCodeEvent &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RequestCodeEventCopyWith<_$RequestCodeEvent> get copyWith =>
      __$$RequestCodeEventCopyWithImpl<_$RequestCodeEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String? phone) requestCode,
    required TResult Function(String? phone, String? code) verifyCode,
    required TResult Function() logout,
  }) {
    return requestCode(phone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String? phone)? requestCode,
    TResult? Function(String? phone, String? code)? verifyCode,
    TResult? Function()? logout,
  }) {
    return requestCode?.call(phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String? phone)? requestCode,
    TResult Function(String? phone, String? code)? verifyCode,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (requestCode != null) {
      return requestCode(phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialEvent value) initial,
    required TResult Function(RequestCodeEvent value) requestCode,
    required TResult Function(VerifyCodeEvent value) verifyCode,
    required TResult Function(LogoutEvent value) logout,
  }) {
    return requestCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialEvent value)? initial,
    TResult? Function(RequestCodeEvent value)? requestCode,
    TResult? Function(VerifyCodeEvent value)? verifyCode,
    TResult? Function(LogoutEvent value)? logout,
  }) {
    return requestCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialEvent value)? initial,
    TResult Function(RequestCodeEvent value)? requestCode,
    TResult Function(VerifyCodeEvent value)? verifyCode,
    TResult Function(LogoutEvent value)? logout,
    required TResult orElse(),
  }) {
    if (requestCode != null) {
      return requestCode(this);
    }
    return orElse();
  }
}

abstract class RequestCodeEvent implements AuthEvent {
  const factory RequestCodeEvent(final String? phone) = _$RequestCodeEvent;

  String? get phone;
  @JsonKey(ignore: true)
  _$$RequestCodeEventCopyWith<_$RequestCodeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VerifyCodeEventCopyWith<$Res> {
  factory _$$VerifyCodeEventCopyWith(
          _$VerifyCodeEvent value, $Res Function(_$VerifyCodeEvent) then) =
      __$$VerifyCodeEventCopyWithImpl<$Res>;
  @useResult
  $Res call({String? phone, String? code});
}

/// @nodoc
class __$$VerifyCodeEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$VerifyCodeEvent>
    implements _$$VerifyCodeEventCopyWith<$Res> {
  __$$VerifyCodeEventCopyWithImpl(
      _$VerifyCodeEvent _value, $Res Function(_$VerifyCodeEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = freezed,
    Object? code = freezed,
  }) {
    return _then(_$VerifyCodeEvent(
      freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$VerifyCodeEvent implements VerifyCodeEvent {
  const _$VerifyCodeEvent(this.phone, this.code);

  @override
  final String? phone;
  @override
  final String? code;

  @override
  String toString() {
    return 'AuthEvent.verifyCode(phone: $phone, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifyCodeEvent &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifyCodeEventCopyWith<_$VerifyCodeEvent> get copyWith =>
      __$$VerifyCodeEventCopyWithImpl<_$VerifyCodeEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String? phone) requestCode,
    required TResult Function(String? phone, String? code) verifyCode,
    required TResult Function() logout,
  }) {
    return verifyCode(phone, code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String? phone)? requestCode,
    TResult? Function(String? phone, String? code)? verifyCode,
    TResult? Function()? logout,
  }) {
    return verifyCode?.call(phone, code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String? phone)? requestCode,
    TResult Function(String? phone, String? code)? verifyCode,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (verifyCode != null) {
      return verifyCode(phone, code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialEvent value) initial,
    required TResult Function(RequestCodeEvent value) requestCode,
    required TResult Function(VerifyCodeEvent value) verifyCode,
    required TResult Function(LogoutEvent value) logout,
  }) {
    return verifyCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialEvent value)? initial,
    TResult? Function(RequestCodeEvent value)? requestCode,
    TResult? Function(VerifyCodeEvent value)? verifyCode,
    TResult? Function(LogoutEvent value)? logout,
  }) {
    return verifyCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialEvent value)? initial,
    TResult Function(RequestCodeEvent value)? requestCode,
    TResult Function(VerifyCodeEvent value)? verifyCode,
    TResult Function(LogoutEvent value)? logout,
    required TResult orElse(),
  }) {
    if (verifyCode != null) {
      return verifyCode(this);
    }
    return orElse();
  }
}

abstract class VerifyCodeEvent implements AuthEvent {
  const factory VerifyCodeEvent(final String? phone, final String? code) =
      _$VerifyCodeEvent;

  String? get phone;
  String? get code;
  @JsonKey(ignore: true)
  _$$VerifyCodeEventCopyWith<_$VerifyCodeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogoutEventCopyWith<$Res> {
  factory _$$LogoutEventCopyWith(
          _$LogoutEvent value, $Res Function(_$LogoutEvent) then) =
      __$$LogoutEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutEventCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LogoutEvent>
    implements _$$LogoutEventCopyWith<$Res> {
  __$$LogoutEventCopyWithImpl(
      _$LogoutEvent _value, $Res Function(_$LogoutEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LogoutEvent implements LogoutEvent {
  const _$LogoutEvent();

  @override
  String toString() {
    return 'AuthEvent.logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String? phone) requestCode,
    required TResult Function(String? phone, String? code) verifyCode,
    required TResult Function() logout,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String? phone)? requestCode,
    TResult? Function(String? phone, String? code)? verifyCode,
    TResult? Function()? logout,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String? phone)? requestCode,
    TResult Function(String? phone, String? code)? verifyCode,
    TResult Function()? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialEvent value) initial,
    required TResult Function(RequestCodeEvent value) requestCode,
    required TResult Function(VerifyCodeEvent value) verifyCode,
    required TResult Function(LogoutEvent value) logout,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialEvent value)? initial,
    TResult? Function(RequestCodeEvent value)? requestCode,
    TResult? Function(VerifyCodeEvent value)? verifyCode,
    TResult? Function(LogoutEvent value)? logout,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialEvent value)? initial,
    TResult Function(RequestCodeEvent value)? requestCode,
    TResult Function(VerifyCodeEvent value)? verifyCode,
    TResult Function(LogoutEvent value)? logout,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class LogoutEvent implements AuthEvent {
  const factory LogoutEvent() = _$LogoutEvent;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() requestCodeSuccess,
    required TResult Function(TokenModel? token) verifyCodeSuccess,
    required TResult Function() logout,
    required TResult Function(Failure? failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? requestCodeSuccess,
    TResult? Function(TokenModel? token)? verifyCodeSuccess,
    TResult? Function()? logout,
    TResult? Function(Failure? failure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? requestCodeSuccess,
    TResult Function(TokenModel? token)? verifyCodeSuccess,
    TResult Function()? logout,
    TResult Function(Failure? failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateInitial value) initial,
    required TResult Function(AuthStateLoading value) loading,
    required TResult Function(AuthStateRequestCodeSuccess value)
        requestCodeSuccess,
    required TResult Function(AuthStateVeirfyCodeSuccess value)
        verifyCodeSuccess,
    required TResult Function(AuthStateLogoutSuccess value) logout,
    required TResult Function(AuthFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStateInitial value)? initial,
    TResult? Function(AuthStateLoading value)? loading,
    TResult? Function(AuthStateRequestCodeSuccess value)? requestCodeSuccess,
    TResult? Function(AuthStateVeirfyCodeSuccess value)? verifyCodeSuccess,
    TResult? Function(AuthStateLogoutSuccess value)? logout,
    TResult? Function(AuthFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateInitial value)? initial,
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateRequestCodeSuccess value)? requestCodeSuccess,
    TResult Function(AuthStateVeirfyCodeSuccess value)? verifyCodeSuccess,
    TResult Function(AuthStateLogoutSuccess value)? logout,
    TResult Function(AuthFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthStateInitialCopyWith<$Res> {
  factory _$$AuthStateInitialCopyWith(
          _$AuthStateInitial value, $Res Function(_$AuthStateInitial) then) =
      __$$AuthStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthStateInitialCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateInitial>
    implements _$$AuthStateInitialCopyWith<$Res> {
  __$$AuthStateInitialCopyWithImpl(
      _$AuthStateInitial _value, $Res Function(_$AuthStateInitial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthStateInitial implements AuthStateInitial {
  const _$AuthStateInitial();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() requestCodeSuccess,
    required TResult Function(TokenModel? token) verifyCodeSuccess,
    required TResult Function() logout,
    required TResult Function(Failure? failure) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? requestCodeSuccess,
    TResult? Function(TokenModel? token)? verifyCodeSuccess,
    TResult? Function()? logout,
    TResult? Function(Failure? failure)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? requestCodeSuccess,
    TResult Function(TokenModel? token)? verifyCodeSuccess,
    TResult Function()? logout,
    TResult Function(Failure? failure)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateInitial value) initial,
    required TResult Function(AuthStateLoading value) loading,
    required TResult Function(AuthStateRequestCodeSuccess value)
        requestCodeSuccess,
    required TResult Function(AuthStateVeirfyCodeSuccess value)
        verifyCodeSuccess,
    required TResult Function(AuthStateLogoutSuccess value) logout,
    required TResult Function(AuthFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStateInitial value)? initial,
    TResult? Function(AuthStateLoading value)? loading,
    TResult? Function(AuthStateRequestCodeSuccess value)? requestCodeSuccess,
    TResult? Function(AuthStateVeirfyCodeSuccess value)? verifyCodeSuccess,
    TResult? Function(AuthStateLogoutSuccess value)? logout,
    TResult? Function(AuthFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateInitial value)? initial,
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateRequestCodeSuccess value)? requestCodeSuccess,
    TResult Function(AuthStateVeirfyCodeSuccess value)? verifyCodeSuccess,
    TResult Function(AuthStateLogoutSuccess value)? logout,
    TResult Function(AuthFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AuthStateInitial implements AuthState {
  const factory AuthStateInitial() = _$AuthStateInitial;
}

/// @nodoc
abstract class _$$AuthStateLoadingCopyWith<$Res> {
  factory _$$AuthStateLoadingCopyWith(
          _$AuthStateLoading value, $Res Function(_$AuthStateLoading) then) =
      __$$AuthStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthStateLoadingCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateLoading>
    implements _$$AuthStateLoadingCopyWith<$Res> {
  __$$AuthStateLoadingCopyWithImpl(
      _$AuthStateLoading _value, $Res Function(_$AuthStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthStateLoading implements AuthStateLoading {
  const _$AuthStateLoading();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() requestCodeSuccess,
    required TResult Function(TokenModel? token) verifyCodeSuccess,
    required TResult Function() logout,
    required TResult Function(Failure? failure) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? requestCodeSuccess,
    TResult? Function(TokenModel? token)? verifyCodeSuccess,
    TResult? Function()? logout,
    TResult? Function(Failure? failure)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? requestCodeSuccess,
    TResult Function(TokenModel? token)? verifyCodeSuccess,
    TResult Function()? logout,
    TResult Function(Failure? failure)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateInitial value) initial,
    required TResult Function(AuthStateLoading value) loading,
    required TResult Function(AuthStateRequestCodeSuccess value)
        requestCodeSuccess,
    required TResult Function(AuthStateVeirfyCodeSuccess value)
        verifyCodeSuccess,
    required TResult Function(AuthStateLogoutSuccess value) logout,
    required TResult Function(AuthFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStateInitial value)? initial,
    TResult? Function(AuthStateLoading value)? loading,
    TResult? Function(AuthStateRequestCodeSuccess value)? requestCodeSuccess,
    TResult? Function(AuthStateVeirfyCodeSuccess value)? verifyCodeSuccess,
    TResult? Function(AuthStateLogoutSuccess value)? logout,
    TResult? Function(AuthFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateInitial value)? initial,
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateRequestCodeSuccess value)? requestCodeSuccess,
    TResult Function(AuthStateVeirfyCodeSuccess value)? verifyCodeSuccess,
    TResult Function(AuthStateLogoutSuccess value)? logout,
    TResult Function(AuthFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AuthStateLoading implements AuthState {
  const factory AuthStateLoading() = _$AuthStateLoading;
}

/// @nodoc
abstract class _$$AuthStateRequestCodeSuccessCopyWith<$Res> {
  factory _$$AuthStateRequestCodeSuccessCopyWith(
          _$AuthStateRequestCodeSuccess value,
          $Res Function(_$AuthStateRequestCodeSuccess) then) =
      __$$AuthStateRequestCodeSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthStateRequestCodeSuccessCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateRequestCodeSuccess>
    implements _$$AuthStateRequestCodeSuccessCopyWith<$Res> {
  __$$AuthStateRequestCodeSuccessCopyWithImpl(
      _$AuthStateRequestCodeSuccess _value,
      $Res Function(_$AuthStateRequestCodeSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthStateRequestCodeSuccess implements AuthStateRequestCodeSuccess {
  const _$AuthStateRequestCodeSuccess();

  @override
  String toString() {
    return 'AuthState.requestCodeSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateRequestCodeSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() requestCodeSuccess,
    required TResult Function(TokenModel? token) verifyCodeSuccess,
    required TResult Function() logout,
    required TResult Function(Failure? failure) failure,
  }) {
    return requestCodeSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? requestCodeSuccess,
    TResult? Function(TokenModel? token)? verifyCodeSuccess,
    TResult? Function()? logout,
    TResult? Function(Failure? failure)? failure,
  }) {
    return requestCodeSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? requestCodeSuccess,
    TResult Function(TokenModel? token)? verifyCodeSuccess,
    TResult Function()? logout,
    TResult Function(Failure? failure)? failure,
    required TResult orElse(),
  }) {
    if (requestCodeSuccess != null) {
      return requestCodeSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateInitial value) initial,
    required TResult Function(AuthStateLoading value) loading,
    required TResult Function(AuthStateRequestCodeSuccess value)
        requestCodeSuccess,
    required TResult Function(AuthStateVeirfyCodeSuccess value)
        verifyCodeSuccess,
    required TResult Function(AuthStateLogoutSuccess value) logout,
    required TResult Function(AuthFailure value) failure,
  }) {
    return requestCodeSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStateInitial value)? initial,
    TResult? Function(AuthStateLoading value)? loading,
    TResult? Function(AuthStateRequestCodeSuccess value)? requestCodeSuccess,
    TResult? Function(AuthStateVeirfyCodeSuccess value)? verifyCodeSuccess,
    TResult? Function(AuthStateLogoutSuccess value)? logout,
    TResult? Function(AuthFailure value)? failure,
  }) {
    return requestCodeSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateInitial value)? initial,
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateRequestCodeSuccess value)? requestCodeSuccess,
    TResult Function(AuthStateVeirfyCodeSuccess value)? verifyCodeSuccess,
    TResult Function(AuthStateLogoutSuccess value)? logout,
    TResult Function(AuthFailure value)? failure,
    required TResult orElse(),
  }) {
    if (requestCodeSuccess != null) {
      return requestCodeSuccess(this);
    }
    return orElse();
  }
}

abstract class AuthStateRequestCodeSuccess implements AuthState {
  const factory AuthStateRequestCodeSuccess() = _$AuthStateRequestCodeSuccess;
}

/// @nodoc
abstract class _$$AuthStateVeirfyCodeSuccessCopyWith<$Res> {
  factory _$$AuthStateVeirfyCodeSuccessCopyWith(
          _$AuthStateVeirfyCodeSuccess value,
          $Res Function(_$AuthStateVeirfyCodeSuccess) then) =
      __$$AuthStateVeirfyCodeSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({TokenModel? token});

  $TokenModelCopyWith<$Res>? get token;
}

/// @nodoc
class __$$AuthStateVeirfyCodeSuccessCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateVeirfyCodeSuccess>
    implements _$$AuthStateVeirfyCodeSuccessCopyWith<$Res> {
  __$$AuthStateVeirfyCodeSuccessCopyWithImpl(
      _$AuthStateVeirfyCodeSuccess _value,
      $Res Function(_$AuthStateVeirfyCodeSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = freezed,
  }) {
    return _then(_$AuthStateVeirfyCodeSuccess(
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as TokenModel?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TokenModelCopyWith<$Res>? get token {
    if (_value.token == null) {
      return null;
    }

    return $TokenModelCopyWith<$Res>(_value.token!, (value) {
      return _then(_value.copyWith(token: value));
    });
  }
}

/// @nodoc

class _$AuthStateVeirfyCodeSuccess implements AuthStateVeirfyCodeSuccess {
  const _$AuthStateVeirfyCodeSuccess({this.token});

  @override
  final TokenModel? token;

  @override
  String toString() {
    return 'AuthState.verifyCodeSuccess(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateVeirfyCodeSuccess &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(runtimeType, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateVeirfyCodeSuccessCopyWith<_$AuthStateVeirfyCodeSuccess>
      get copyWith => __$$AuthStateVeirfyCodeSuccessCopyWithImpl<
          _$AuthStateVeirfyCodeSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() requestCodeSuccess,
    required TResult Function(TokenModel? token) verifyCodeSuccess,
    required TResult Function() logout,
    required TResult Function(Failure? failure) failure,
  }) {
    return verifyCodeSuccess(token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? requestCodeSuccess,
    TResult? Function(TokenModel? token)? verifyCodeSuccess,
    TResult? Function()? logout,
    TResult? Function(Failure? failure)? failure,
  }) {
    return verifyCodeSuccess?.call(token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? requestCodeSuccess,
    TResult Function(TokenModel? token)? verifyCodeSuccess,
    TResult Function()? logout,
    TResult Function(Failure? failure)? failure,
    required TResult orElse(),
  }) {
    if (verifyCodeSuccess != null) {
      return verifyCodeSuccess(token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateInitial value) initial,
    required TResult Function(AuthStateLoading value) loading,
    required TResult Function(AuthStateRequestCodeSuccess value)
        requestCodeSuccess,
    required TResult Function(AuthStateVeirfyCodeSuccess value)
        verifyCodeSuccess,
    required TResult Function(AuthStateLogoutSuccess value) logout,
    required TResult Function(AuthFailure value) failure,
  }) {
    return verifyCodeSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStateInitial value)? initial,
    TResult? Function(AuthStateLoading value)? loading,
    TResult? Function(AuthStateRequestCodeSuccess value)? requestCodeSuccess,
    TResult? Function(AuthStateVeirfyCodeSuccess value)? verifyCodeSuccess,
    TResult? Function(AuthStateLogoutSuccess value)? logout,
    TResult? Function(AuthFailure value)? failure,
  }) {
    return verifyCodeSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateInitial value)? initial,
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateRequestCodeSuccess value)? requestCodeSuccess,
    TResult Function(AuthStateVeirfyCodeSuccess value)? verifyCodeSuccess,
    TResult Function(AuthStateLogoutSuccess value)? logout,
    TResult Function(AuthFailure value)? failure,
    required TResult orElse(),
  }) {
    if (verifyCodeSuccess != null) {
      return verifyCodeSuccess(this);
    }
    return orElse();
  }
}

abstract class AuthStateVeirfyCodeSuccess implements AuthState {
  const factory AuthStateVeirfyCodeSuccess({final TokenModel? token}) =
      _$AuthStateVeirfyCodeSuccess;

  TokenModel? get token;
  @JsonKey(ignore: true)
  _$$AuthStateVeirfyCodeSuccessCopyWith<_$AuthStateVeirfyCodeSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AuthStateLogoutSuccessCopyWith<$Res> {
  factory _$$AuthStateLogoutSuccessCopyWith(_$AuthStateLogoutSuccess value,
          $Res Function(_$AuthStateLogoutSuccess) then) =
      __$$AuthStateLogoutSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthStateLogoutSuccessCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateLogoutSuccess>
    implements _$$AuthStateLogoutSuccessCopyWith<$Res> {
  __$$AuthStateLogoutSuccessCopyWithImpl(_$AuthStateLogoutSuccess _value,
      $Res Function(_$AuthStateLogoutSuccess) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AuthStateLogoutSuccess implements AuthStateLogoutSuccess {
  const _$AuthStateLogoutSuccess();

  @override
  String toString() {
    return 'AuthState.logout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AuthStateLogoutSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() requestCodeSuccess,
    required TResult Function(TokenModel? token) verifyCodeSuccess,
    required TResult Function() logout,
    required TResult Function(Failure? failure) failure,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? requestCodeSuccess,
    TResult? Function(TokenModel? token)? verifyCodeSuccess,
    TResult? Function()? logout,
    TResult? Function(Failure? failure)? failure,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? requestCodeSuccess,
    TResult Function(TokenModel? token)? verifyCodeSuccess,
    TResult Function()? logout,
    TResult Function(Failure? failure)? failure,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateInitial value) initial,
    required TResult Function(AuthStateLoading value) loading,
    required TResult Function(AuthStateRequestCodeSuccess value)
        requestCodeSuccess,
    required TResult Function(AuthStateVeirfyCodeSuccess value)
        verifyCodeSuccess,
    required TResult Function(AuthStateLogoutSuccess value) logout,
    required TResult Function(AuthFailure value) failure,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStateInitial value)? initial,
    TResult? Function(AuthStateLoading value)? loading,
    TResult? Function(AuthStateRequestCodeSuccess value)? requestCodeSuccess,
    TResult? Function(AuthStateVeirfyCodeSuccess value)? verifyCodeSuccess,
    TResult? Function(AuthStateLogoutSuccess value)? logout,
    TResult? Function(AuthFailure value)? failure,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateInitial value)? initial,
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateRequestCodeSuccess value)? requestCodeSuccess,
    TResult Function(AuthStateVeirfyCodeSuccess value)? verifyCodeSuccess,
    TResult Function(AuthStateLogoutSuccess value)? logout,
    TResult Function(AuthFailure value)? failure,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class AuthStateLogoutSuccess implements AuthState {
  const factory AuthStateLogoutSuccess() = _$AuthStateLogoutSuccess;
}

/// @nodoc
abstract class _$$AuthFailureCopyWith<$Res> {
  factory _$$AuthFailureCopyWith(
          _$AuthFailure value, $Res Function(_$AuthFailure) then) =
      __$$AuthFailureCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure? failure});

  $FailureCopyWith<$Res>? get failure;
}

/// @nodoc
class __$$AuthFailureCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthFailure>
    implements _$$AuthFailureCopyWith<$Res> {
  __$$AuthFailureCopyWithImpl(
      _$AuthFailure _value, $Res Function(_$AuthFailure) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_$AuthFailure(
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $FailureCopyWith<$Res>? get failure {
    if (_value.failure == null) {
      return null;
    }

    return $FailureCopyWith<$Res>(_value.failure!, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$AuthFailure implements AuthFailure {
  const _$AuthFailure({this.failure});

  @override
  final Failure? failure;

  @override
  String toString() {
    return 'AuthState.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthFailure &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthFailureCopyWith<_$AuthFailure> get copyWith =>
      __$$AuthFailureCopyWithImpl<_$AuthFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() requestCodeSuccess,
    required TResult Function(TokenModel? token) verifyCodeSuccess,
    required TResult Function() logout,
    required TResult Function(Failure? failure) failure,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? requestCodeSuccess,
    TResult? Function(TokenModel? token)? verifyCodeSuccess,
    TResult? Function()? logout,
    TResult? Function(Failure? failure)? failure,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? requestCodeSuccess,
    TResult Function(TokenModel? token)? verifyCodeSuccess,
    TResult Function()? logout,
    TResult Function(Failure? failure)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthStateInitial value) initial,
    required TResult Function(AuthStateLoading value) loading,
    required TResult Function(AuthStateRequestCodeSuccess value)
        requestCodeSuccess,
    required TResult Function(AuthStateVeirfyCodeSuccess value)
        verifyCodeSuccess,
    required TResult Function(AuthStateLogoutSuccess value) logout,
    required TResult Function(AuthFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthStateInitial value)? initial,
    TResult? Function(AuthStateLoading value)? loading,
    TResult? Function(AuthStateRequestCodeSuccess value)? requestCodeSuccess,
    TResult? Function(AuthStateVeirfyCodeSuccess value)? verifyCodeSuccess,
    TResult? Function(AuthStateLogoutSuccess value)? logout,
    TResult? Function(AuthFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthStateInitial value)? initial,
    TResult Function(AuthStateLoading value)? loading,
    TResult Function(AuthStateRequestCodeSuccess value)? requestCodeSuccess,
    TResult Function(AuthStateVeirfyCodeSuccess value)? verifyCodeSuccess,
    TResult Function(AuthStateLogoutSuccess value)? logout,
    TResult Function(AuthFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class AuthFailure implements AuthState {
  const factory AuthFailure({final Failure? failure}) = _$AuthFailure;

  Failure? get failure;
  @JsonKey(ignore: true)
  _$$AuthFailureCopyWith<_$AuthFailure> get copyWith =>
      throw _privateConstructorUsedError;
}
