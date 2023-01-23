import 'package:aina_project/core/utils/dio/dio_client.dart';
import 'package:aina_project/core/utils/mixins/formmatted_phone.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@injectable
class AuthDatasource with FormattedPhone {

  Dio get dio => DioClient(Dio()).getDio;

  AuthDatasource();

  Future<void> requestCode(String phone) async {
    // final formattedPhone = phone.replaceAll(RegExp(r'\+|\s'), '');
    // formattedPhone.replaceAll(r'\+|\s', '');
    await dio.post("/user/auth/request-code",
        data: {"phone": "+7${formattedPhone(phone)}"});
  }

  Future<Response> verifyCode(String phone, String code) async {
    // final formattedPhone = phone.replaceAll(RegExp(r'\+|\s'), '');
    // formattedPhone.replaceAll(r'\+|\s', '');
    Response response = await dio.post("/user/auth/verify-code",
        data: {
          "phone": "+7${formattedPhone(phone)}",
          "code": code,
          "registrationToken": {
            "type": "iOS",
            "value": "string"
          }
        }
    );

    return response;
  }

  Future<void> logOut() async {
    Response response = await dio.post("/user/auth/logout",
        data: {
          "registrationToken": {
            "type": "iOS",
            "value": "string"
          }
        }
    );

    print(response.data);
  }

}
