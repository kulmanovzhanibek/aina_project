// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Failure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() general,
    required TResult Function() noConnection,
    required TResult Function(String error) serverError,
    required TResult Function() fileSystemError,
    required TResult Function() fileSizeLimitExceed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? general,
    TResult? Function()? noConnection,
    TResult? Function(String error)? serverError,
    TResult? Function()? fileSystemError,
    TResult? Function()? fileSizeLimitExceed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? general,
    TResult Function()? noConnection,
    TResult Function(String error)? serverError,
    TResult Function()? fileSystemError,
    TResult Function()? fileSizeLimitExceed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_General value) general,
    required TResult Function(_NoConnection value) noConnection,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_FileSystemError value) fileSystemError,
    required TResult Function(_FileSizeLimitExceed value) fileSizeLimitExceed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_General value)? general,
    TResult? Function(_NoConnection value)? noConnection,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_FileSystemError value)? fileSystemError,
    TResult? Function(_FileSizeLimitExceed value)? fileSizeLimitExceed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_General value)? general,
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_FileSystemError value)? fileSystemError,
    TResult Function(_FileSizeLimitExceed value)? fileSizeLimitExceed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res, Failure>;
}

/// @nodoc
class _$FailureCopyWithImpl<$Res, $Val extends Failure>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GeneralCopyWith<$Res> {
  factory _$$_GeneralCopyWith(
          _$_General value, $Res Function(_$_General) then) =
      __$$_GeneralCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GeneralCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$_General>
    implements _$$_GeneralCopyWith<$Res> {
  __$$_GeneralCopyWithImpl(_$_General _value, $Res Function(_$_General) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_General implements _General {
  const _$_General();

  @override
  String toString() {
    return 'Failure.general()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_General);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() general,
    required TResult Function() noConnection,
    required TResult Function(String error) serverError,
    required TResult Function() fileSystemError,
    required TResult Function() fileSizeLimitExceed,
  }) {
    return general();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? general,
    TResult? Function()? noConnection,
    TResult? Function(String error)? serverError,
    TResult? Function()? fileSystemError,
    TResult? Function()? fileSizeLimitExceed,
  }) {
    return general?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? general,
    TResult Function()? noConnection,
    TResult Function(String error)? serverError,
    TResult Function()? fileSystemError,
    TResult Function()? fileSizeLimitExceed,
    required TResult orElse(),
  }) {
    if (general != null) {
      return general();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_General value) general,
    required TResult Function(_NoConnection value) noConnection,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_FileSystemError value) fileSystemError,
    required TResult Function(_FileSizeLimitExceed value) fileSizeLimitExceed,
  }) {
    return general(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_General value)? general,
    TResult? Function(_NoConnection value)? noConnection,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_FileSystemError value)? fileSystemError,
    TResult? Function(_FileSizeLimitExceed value)? fileSizeLimitExceed,
  }) {
    return general?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_General value)? general,
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_FileSystemError value)? fileSystemError,
    TResult Function(_FileSizeLimitExceed value)? fileSizeLimitExceed,
    required TResult orElse(),
  }) {
    if (general != null) {
      return general(this);
    }
    return orElse();
  }
}

abstract class _General implements Failure {
  const factory _General() = _$_General;
}

/// @nodoc
abstract class _$$_NoConnectionCopyWith<$Res> {
  factory _$$_NoConnectionCopyWith(
          _$_NoConnection value, $Res Function(_$_NoConnection) then) =
      __$$_NoConnectionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NoConnectionCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$_NoConnection>
    implements _$$_NoConnectionCopyWith<$Res> {
  __$$_NoConnectionCopyWithImpl(
      _$_NoConnection _value, $Res Function(_$_NoConnection) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NoConnection implements _NoConnection {
  const _$_NoConnection();

  @override
  String toString() {
    return 'Failure.noConnection()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NoConnection);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() general,
    required TResult Function() noConnection,
    required TResult Function(String error) serverError,
    required TResult Function() fileSystemError,
    required TResult Function() fileSizeLimitExceed,
  }) {
    return noConnection();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? general,
    TResult? Function()? noConnection,
    TResult? Function(String error)? serverError,
    TResult? Function()? fileSystemError,
    TResult? Function()? fileSizeLimitExceed,
  }) {
    return noConnection?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? general,
    TResult Function()? noConnection,
    TResult Function(String error)? serverError,
    TResult Function()? fileSystemError,
    TResult Function()? fileSizeLimitExceed,
    required TResult orElse(),
  }) {
    if (noConnection != null) {
      return noConnection();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_General value) general,
    required TResult Function(_NoConnection value) noConnection,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_FileSystemError value) fileSystemError,
    required TResult Function(_FileSizeLimitExceed value) fileSizeLimitExceed,
  }) {
    return noConnection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_General value)? general,
    TResult? Function(_NoConnection value)? noConnection,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_FileSystemError value)? fileSystemError,
    TResult? Function(_FileSizeLimitExceed value)? fileSizeLimitExceed,
  }) {
    return noConnection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_General value)? general,
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_FileSystemError value)? fileSystemError,
    TResult Function(_FileSizeLimitExceed value)? fileSizeLimitExceed,
    required TResult orElse(),
  }) {
    if (noConnection != null) {
      return noConnection(this);
    }
    return orElse();
  }
}

abstract class _NoConnection implements Failure {
  const factory _NoConnection() = _$_NoConnection;
}

/// @nodoc
abstract class _$$_ServerErrorCopyWith<$Res> {
  factory _$$_ServerErrorCopyWith(
          _$_ServerError value, $Res Function(_$_ServerError) then) =
      __$$_ServerErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$_ServerErrorCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$_ServerError>
    implements _$$_ServerErrorCopyWith<$Res> {
  __$$_ServerErrorCopyWithImpl(
      _$_ServerError _value, $Res Function(_$_ServerError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$_ServerError(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ServerError implements _ServerError {
  const _$_ServerError(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'Failure.serverError(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ServerError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ServerErrorCopyWith<_$_ServerError> get copyWith =>
      __$$_ServerErrorCopyWithImpl<_$_ServerError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() general,
    required TResult Function() noConnection,
    required TResult Function(String error) serverError,
    required TResult Function() fileSystemError,
    required TResult Function() fileSizeLimitExceed,
  }) {
    return serverError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? general,
    TResult? Function()? noConnection,
    TResult? Function(String error)? serverError,
    TResult? Function()? fileSystemError,
    TResult? Function()? fileSizeLimitExceed,
  }) {
    return serverError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? general,
    TResult Function()? noConnection,
    TResult Function(String error)? serverError,
    TResult Function()? fileSystemError,
    TResult Function()? fileSizeLimitExceed,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_General value) general,
    required TResult Function(_NoConnection value) noConnection,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_FileSystemError value) fileSystemError,
    required TResult Function(_FileSizeLimitExceed value) fileSizeLimitExceed,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_General value)? general,
    TResult? Function(_NoConnection value)? noConnection,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_FileSystemError value)? fileSystemError,
    TResult? Function(_FileSizeLimitExceed value)? fileSizeLimitExceed,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_General value)? general,
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_FileSystemError value)? fileSystemError,
    TResult Function(_FileSizeLimitExceed value)? fileSizeLimitExceed,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _ServerError implements Failure {
  const factory _ServerError(final String error) = _$_ServerError;

  String get error;
  @JsonKey(ignore: true)
  _$$_ServerErrorCopyWith<_$_ServerError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FileSystemErrorCopyWith<$Res> {
  factory _$$_FileSystemErrorCopyWith(
          _$_FileSystemError value, $Res Function(_$_FileSystemError) then) =
      __$$_FileSystemErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FileSystemErrorCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$_FileSystemError>
    implements _$$_FileSystemErrorCopyWith<$Res> {
  __$$_FileSystemErrorCopyWithImpl(
      _$_FileSystemError _value, $Res Function(_$_FileSystemError) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FileSystemError implements _FileSystemError {
  const _$_FileSystemError();

  @override
  String toString() {
    return 'Failure.fileSystemError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FileSystemError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() general,
    required TResult Function() noConnection,
    required TResult Function(String error) serverError,
    required TResult Function() fileSystemError,
    required TResult Function() fileSizeLimitExceed,
  }) {
    return fileSystemError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? general,
    TResult? Function()? noConnection,
    TResult? Function(String error)? serverError,
    TResult? Function()? fileSystemError,
    TResult? Function()? fileSizeLimitExceed,
  }) {
    return fileSystemError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? general,
    TResult Function()? noConnection,
    TResult Function(String error)? serverError,
    TResult Function()? fileSystemError,
    TResult Function()? fileSizeLimitExceed,
    required TResult orElse(),
  }) {
    if (fileSystemError != null) {
      return fileSystemError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_General value) general,
    required TResult Function(_NoConnection value) noConnection,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_FileSystemError value) fileSystemError,
    required TResult Function(_FileSizeLimitExceed value) fileSizeLimitExceed,
  }) {
    return fileSystemError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_General value)? general,
    TResult? Function(_NoConnection value)? noConnection,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_FileSystemError value)? fileSystemError,
    TResult? Function(_FileSizeLimitExceed value)? fileSizeLimitExceed,
  }) {
    return fileSystemError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_General value)? general,
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_FileSystemError value)? fileSystemError,
    TResult Function(_FileSizeLimitExceed value)? fileSizeLimitExceed,
    required TResult orElse(),
  }) {
    if (fileSystemError != null) {
      return fileSystemError(this);
    }
    return orElse();
  }
}

abstract class _FileSystemError implements Failure {
  const factory _FileSystemError() = _$_FileSystemError;
}

/// @nodoc
abstract class _$$_FileSizeLimitExceedCopyWith<$Res> {
  factory _$$_FileSizeLimitExceedCopyWith(_$_FileSizeLimitExceed value,
          $Res Function(_$_FileSizeLimitExceed) then) =
      __$$_FileSizeLimitExceedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FileSizeLimitExceedCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$_FileSizeLimitExceed>
    implements _$$_FileSizeLimitExceedCopyWith<$Res> {
  __$$_FileSizeLimitExceedCopyWithImpl(_$_FileSizeLimitExceed _value,
      $Res Function(_$_FileSizeLimitExceed) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_FileSizeLimitExceed implements _FileSizeLimitExceed {
  const _$_FileSizeLimitExceed();

  @override
  String toString() {
    return 'Failure.fileSizeLimitExceed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FileSizeLimitExceed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() general,
    required TResult Function() noConnection,
    required TResult Function(String error) serverError,
    required TResult Function() fileSystemError,
    required TResult Function() fileSizeLimitExceed,
  }) {
    return fileSizeLimitExceed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? general,
    TResult? Function()? noConnection,
    TResult? Function(String error)? serverError,
    TResult? Function()? fileSystemError,
    TResult? Function()? fileSizeLimitExceed,
  }) {
    return fileSizeLimitExceed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? general,
    TResult Function()? noConnection,
    TResult Function(String error)? serverError,
    TResult Function()? fileSystemError,
    TResult Function()? fileSizeLimitExceed,
    required TResult orElse(),
  }) {
    if (fileSizeLimitExceed != null) {
      return fileSizeLimitExceed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_General value) general,
    required TResult Function(_NoConnection value) noConnection,
    required TResult Function(_ServerError value) serverError,
    required TResult Function(_FileSystemError value) fileSystemError,
    required TResult Function(_FileSizeLimitExceed value) fileSizeLimitExceed,
  }) {
    return fileSizeLimitExceed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_General value)? general,
    TResult? Function(_NoConnection value)? noConnection,
    TResult? Function(_ServerError value)? serverError,
    TResult? Function(_FileSystemError value)? fileSystemError,
    TResult? Function(_FileSizeLimitExceed value)? fileSizeLimitExceed,
  }) {
    return fileSizeLimitExceed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_General value)? general,
    TResult Function(_NoConnection value)? noConnection,
    TResult Function(_ServerError value)? serverError,
    TResult Function(_FileSystemError value)? fileSystemError,
    TResult Function(_FileSizeLimitExceed value)? fileSizeLimitExceed,
    required TResult orElse(),
  }) {
    if (fileSizeLimitExceed != null) {
      return fileSizeLimitExceed(this);
    }
    return orElse();
  }
}

abstract class _FileSizeLimitExceed implements Failure {
  const factory _FileSizeLimitExceed() = _$_FileSizeLimitExceed;
}
