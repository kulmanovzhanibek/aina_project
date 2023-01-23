class LocalException {
  final LocalExceptionType type;

  LocalException({required this.type});
}

enum LocalExceptionType {
  absentValue,
}
