import 'dart:async';
import 'package:aina_project/core/error/exceptions/local_exception.dart';
import 'package:aina_project/core/error/failure.dart';
import 'package:aina_project/features/auth/data/models/token_model.dart';
import 'package:aina_project/features/auth/data/repositories/auth_repositories.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

part 'parts/init.dart';

part 'parts/start.dart';

part 'parts/stop.dart';

part 'session_bloc.freezed.dart';

@injectable
class SessionBloc extends Bloc<SessionBlocEvent, SessionBlocState> {
  SessionBloc() : super(const _Initial()) {
    on<_Init>(_init);
    on<_Start>(_start);
    on<_Stop>(_stop);
  }
}

@freezed
class SessionBlocState with _$SessionBlocState {
  const factory SessionBlocState.authorized() = _Authorized;

  const factory SessionBlocState.unauthorized() = _Unautorized;

  const factory SessionBlocState.initial() = _Initial;

  const factory SessionBlocState.error({required Failure error}) = _Error;

  const factory SessionBlocState.loading() = _Loading;
}

@freezed
class SessionBlocEvent with _$SessionBlocEvent {
  const factory SessionBlocEvent.start({required TokenModel token}) = _Start;

  const factory SessionBlocEvent.stop() = _Stop;

  const factory SessionBlocEvent.init() = _Init;

  const factory SessionBlocEvent.refresh() = _Refresh;
}
