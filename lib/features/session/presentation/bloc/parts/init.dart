part of '../session_bloc.dart';

extension Init on SessionBloc {
  Future<void> _init(_Init event, Emitter<SessionBlocState> emit) async {
    Box tokensBox = Hive.box('tokens');
    try {
      emit(const SessionBlocState.loading());
      final token = await tokensBox.get('access');
      if (token != null) {
        emit(const SessionBlocState.authorized());
      } else {
        emit(const SessionBlocState.unauthorized());
      }
    } catch (error) {
      if (error is DioError) {
        if (error.response?.statusCode == 500) {
          emit(SessionBlocState.error(error: Failure.serverError(error.response?.data['message'])));
        } else {
          emit(const SessionBlocState.error(error: Failure.general()));
        }
        emit(const SessionBlocState.unauthorized());
      } else if (error is LocalException && error.type == LocalExceptionType.absentValue) {
        emit(const SessionBlocState.unauthorized());
      } else {
        emit(const SessionBlocState.unauthorized());
        rethrow;
      }
    }
  }
}
