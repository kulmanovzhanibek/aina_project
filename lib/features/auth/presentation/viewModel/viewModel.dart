import 'package:flutter/cupertino.dart';

class AuthViewModel extends ChangeNotifier {
  bool _isAgree = false;
  bool _disabledButton = true;
  bool _verifyCode = true;
  bool _isCodeFailed = false;
  bool _verifyCodeStage = false;
  final TextEditingController _textEditingController = TextEditingController();
  final TextEditingController _codeEditingController = TextEditingController();

  TextEditingController get textEditingController => _textEditingController;
  TextEditingController get codeEditingController => _codeEditingController;
  bool get isAgree => _isAgree;
  bool get verifyCode => _verifyCode;
  bool get disabledButton => _disabledButton;
  bool get isCodeFailed => _isCodeFailed;
  bool get verifyCodeStage => _verifyCodeStage;

  set isAgree(bool value) {
    _isAgree = value;
    notifyListeners();
  }

  set verifyCodeStage(bool value) {
    _verifyCodeStage = value;
    notifyListeners();
  }

  set isCodeFailed(bool value) {
    _isCodeFailed = value;
    notifyListeners();
  }

  set verifyCode(bool value) {
    _verifyCode = value;
    notifyListeners();
  }

  set disabledButton(bool value) {
    _disabledButton = value;
    notifyListeners();
  }

  @override
  void dispose() {
    super.dispose();
    textEditingController.dispose();
    codeEditingController.dispose();
  }
}