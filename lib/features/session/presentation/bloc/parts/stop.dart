part of '../session_bloc.dart';

extension StopSession on SessionBloc {
  Future<void> _stop(_Stop event, Emitter<SessionBlocState> emit) async {
    try {
      Box tokensBox = Hive.box('tokens');
      await tokensBox.delete('access');
    } on Exception {
      rethrow;
    } finally {
      emit(const SessionBlocState.unauthorized());
    }
  }
}
