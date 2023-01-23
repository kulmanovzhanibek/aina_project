// part of '../session_bloc.dart';
//
// extension RefreshToken on SessionBloc {
//   Future<void> _refresh(
//     _Refresh event,
//     Emitter<SessionBlocState> emit,
//   ) async {
//     try {
//       final oldToken = await _tokenRepository.get();
//       final newToken = await _tokenRepository.refresh(oldToken);
//       await _tokenRepository.save(newToken);
//     } catch (error) {
//       if (error is DioError) {
//         if (error.response?.statusCode == 500) {
//           emit(SessionBlocState.error(
//               error: Failure.serverError(error.response?.data['message'])));
//         } else {
//           emit(const SessionBlocState.error(error: Failure.general()));
//         }
//       } else if (error is LocalException &&
//           error.type == LocalExceptionType.absentValue) {
//         emit(const SessionBlocState.unauthorized());
//       } else {
//         emit(const SessionBlocState.unauthorized());
//         rethrow;
//       }
//     }
//   }
// }
