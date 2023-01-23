// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:aina_project/core/utils/dio/dio_interceptor.dart' as _i4;
import 'package:aina_project/features/auth/data/datasources/auth_datasources.dart'
    as _i3;
import 'package:aina_project/features/auth/data/repositories/auth_repositories.dart'
    as _i5;
import 'package:aina_project/features/auth/presentation/bloc/auth_bloc.dart'
    as _i7;
import 'package:aina_project/features/session/presentation/bloc/session_bloc.dart'
    as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of main-scope dependencies inside of [GetIt]
_i1.GetIt init(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.factory<_i3.AuthDatasource>(() => _i3.AuthDatasource());
  gh.factory<_i4.AuthInterceptor>(() => _i4.AuthInterceptor());
  gh.factory<_i5.AuthRepository>(
      () => _i5.AuthRepositoryImpl(gh<_i3.AuthDatasource>()));
  gh.factory<_i6.SessionBloc>(() => _i6.SessionBloc());
  gh.factory<_i7.AuthBloc>(() => _i7.AuthBloc(gh<_i5.AuthRepository>()));
  return getIt;
}
