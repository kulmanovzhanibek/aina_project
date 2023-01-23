class FileException {
  final FileExceptionType type;

  FileException({required this.type});
}

enum FileExceptionType {
 sizeInMbExceeded,
}
