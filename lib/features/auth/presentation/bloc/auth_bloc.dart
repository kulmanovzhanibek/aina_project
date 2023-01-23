import 'dart:async';

import 'package:aina_project/core/error/failure.dart';
import 'package:aina_project/features/auth/data/models/token_model.dart';
import 'package:aina_project/features/auth/data/repositories/auth_repositories.dart';
import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';
part 'parts/request_code.dart';
part 'parts/verify_code.dart';
part 'parts/logout.dart';
part 'parts/initial.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository authRepository;
  AuthBloc(this.authRepository) : super(const AuthStateInitial()) {
    on<RequestCodeEvent>(_requestCode);
    on<VerifyCodeEvent>(_verifyCode);
    on<LogoutEvent>(_logout);
    on<InitialEvent>(_initial);
  }
}

