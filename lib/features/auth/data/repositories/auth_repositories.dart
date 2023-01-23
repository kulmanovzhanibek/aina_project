import 'package:aina_project/features/auth/data/datasources/auth_datasources.dart';
import 'package:aina_project/features/auth/data/models/token_model.dart';
import 'package:dio/dio.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

abstract class AuthRepository {
  Future<TokenModel> verifyCode(String phone, String code);

  Future<void> requestCode(String phone);

  Future<void> logOut();
}

@Injectable(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  final AuthDatasource _authDatasource;

  AuthRepositoryImpl(this._authDatasource);

  @override
  Future<TokenModel> verifyCode(String phone, String code) async {
    Response response = await _authDatasource.verifyCode(phone, code);

    return TokenModel.fromJson(response.data);
  }

  @override
  Future<void> requestCode(String phone) async {
    await _authDatasource.requestCode(phone);
  }

  @override
  Future<void> logOut() async {
    await _authDatasource.logOut();
  }
}
