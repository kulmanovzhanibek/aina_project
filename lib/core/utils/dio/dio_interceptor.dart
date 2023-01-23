import 'package:aina_project/core/const/endpoints.dart';
import 'package:aina_project/core/const/flavor_config.dart';
import 'package:dio/dio.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../const/flavor_config.dart';

const _name = 'AuthInterceptor';

@injectable
class AuthInterceptor extends QueuedInterceptorsWrapper {
  final Dio tokenDio = Dio();

  AuthInterceptor();

  @override
  Future onRequest(
      RequestOptions options,
      RequestInterceptorHandler handler,
      ) async {
    // String? locale;
    try {
      String? token = Hive.box('tokens').get('access');
      // locale = _localStore.getLocale();
      // final token = await _localStore.getToken();

      if (token != null) {
        options.headers = {
          'authorization': token,
        };
      }
    } catch (e) {
      print('Token pair is absent');
    }
    // if (locale != null) {
    //   options.headers.addAll({'lang': locale});
    // }
    return super.onRequest(options, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) async {
    if (err.response?.statusCode == 401) {

      print(err);

      // if (err.requestOptions.path.contains(Endpoints.loginWithPhone)) {
      //   handler.next(err);
      //   return;
      // }
      // try {
      //   String? token = Hive.box('tokens').get('access');
      //   if (token != null) {
      //     newToken = await _refreshToken(token);
      //   }
      //   await _saveToken(newToken);
      // } catch (e) {
      //   _handleExpiredRefresh(e, handler, err);
      // }
    }
    handler.next(err);
  }

  // Future<TokenRemoteModel> _refreshToken(TokenLocalModel token) async {
  //   return await ApiService(tokenDio,
  //       baseUrl: FlavorConfig.instance?.values.baseUrl ?? '')
  //       .refreshToken(
  //     TokenRemoteModel(
  //       accessToken: token.access!,
  //       refreshToken: token.refresh!,
  //     ),
  //   );
  // }

  // Future<void> _saveToken(TokenRemoteModel token) async {
  //   final newTokenModel = TokenLocalModel()
  //     ..access = token.accessToken
  //     ..refresh = token.refreshToken;
  //   _localStore.saveToken(newTokenModel);
  // }

  // void _handleExpiredRefresh(
  //     Object e, ErrorInterceptorHandler handler, DioError err) {
  //   if (e is DioError) {
  //     if (e.response?.statusCode == 500) {
  //       log('Refresh token is expired', name: _name);
  //       handler.next(err);
  //     }
  //   }
  // }
}


// @injectable
// class DioInterceptor extends Interceptor {
//   final Dio _dio = Dio(BaseOptions(baseUrl: FlavorConfig.instance!.values.baseUrl));
//
//   @override
//   Future onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
//     String? accessToken = Hive.box('tokens').get('access');
//     if (accessToken != null) {
//       options.headers['authorization'] = accessToken;
//     }
//     return handler.next(options);
//   }
//
//   @override
//   void onError(DioError err, ErrorInterceptorHandler handler) async {
//     if (err.response?.statusCode == 401) {
//       if (err.requestOptions.path.contains(Endpoints.verifyCode)) {
//         handler.next(err);
//         return;
//       }
//       try {
//
//       } catch (e) {
//         rethrow;
//       }
//     }
//     handler.next(err);
//   }
//
//   // Future<void> refreshToken() async {
//   //   String username1 = 'browser';
//   //   String password = '';
//   //
//   //   var basicAuth = 'Basic ' + base64Encode(utf8.encode('$username1:$password'));
//   //
//   //   final refreshToken = tokens!.get('refresh');
//   //   Response response = await Dio().post(
//   //     'https://workplace.kitapp.space/uaa/oauth/token',
//   //     data: {
//   //       'refresh_token': refreshToken,
//   //       'grant_type': 'refresh_token',
//   //     },
//   //     options: Options(
//   //         contentType: Headers.formUrlEncodedContentType,
//   //         headers: {"authorization": basicAuth}
//   //     ),
//   //   );
//   //
//   //   if(response.statusCode == 200) {
//   //     tokens!.put('access', response.data['access_token']);
//   //     tokens!.put('refresh', response.data['refresh_token']);
//   //   } else {
//   //     tokens!.clear();
//   //     // navigatorKey.currentState!.pushReplacementNamed('/auth');
//   //   }
//   // }
// }
