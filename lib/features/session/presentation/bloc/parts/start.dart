part of '../session_bloc.dart';

extension StartSession on SessionBloc {
  Future<void> _start(
    _Start event,
    Emitter<SessionBlocState> emit,
  ) async {
    Box tokensBox = Hive.box('tokens');
    try {
      final token = await tokensBox.get('access');
      if (token != null) {
        emit(const SessionBlocState.authorized());
      }
    } on Exception {
      emit(const SessionBlocState.unauthorized());
      rethrow;
    }
  }
}
