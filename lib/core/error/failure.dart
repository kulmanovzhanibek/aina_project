import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
class Failure with _$Failure {
  const factory Failure.general() = _General;
  const factory Failure.noConnection() = _NoConnection;
  const factory Failure.serverError(String error) = _ServerError;
  const factory Failure.fileSystemError() = _FileSystemError;
  const factory Failure.fileSizeLimitExceed() = _FileSizeLimitExceed;
}
