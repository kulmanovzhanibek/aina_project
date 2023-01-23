import 'package:aina_project/core/const/all_styles.dart';
import 'package:aina_project/features/auth/presentation/viewModel/viewModel.dart';
import 'package:aina_project/features/widgets/auth_text_field/auth_text_field.dart';
import 'package:aina_project/features/widgets/check_box/check_box.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:provider/provider.dart';


class VerifyCodePart extends StatelessWidget {
  const VerifyCodePart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final vm = context.watch<AuthViewModel>();
    return Column(
      children: [
        const Text(
          "Войти по номеру телефона", style: textStyleH5,),
        const SizedBox(height: 50,),
        Pinput(
          controller: vm.codeEditingController,
          onChanged: (pin) {
            vm.isCodeFailed = false;
          },
          onCompleted: (pin) {
            if (vm.codeEditingController.text.length == 4) {
              vm.disabledButton = false;
            } else {
              vm.disabledButton = true;
            }
          },
          focusedPinTheme: PinTheme(
            width: 56,
            height: 56,
            textStyle: textStyleH4.copyWith(fontWeight: FontWeight.w500,),
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: vm.isCodeFailed ? colorDanger : colorBlack)),
            ),
          ),
          submittedPinTheme: PinTheme(
            width: 56,
            height: 56,
            textStyle: textStyleH4.copyWith(fontWeight: FontWeight.w500,),
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: vm.isCodeFailed ? colorDanger : colorBlack)),
            ),
          ),
          defaultPinTheme: PinTheme(
            width: 56,
            height: 56,
            textStyle: textStyleH4.copyWith(fontWeight: FontWeight.w500,),
            decoration: BoxDecoration(
              border: Border(bottom: BorderSide(color: vm.isCodeFailed ? colorDanger : colorDarkGrey)),
            ),
          ),
        ),
        const SizedBox(height: 20,),
        Text(!vm.isCodeFailed ? 'Введите 4-х значный код' : 'Ошибка, не корректный код.',
          style: textStyleText.copyWith(color: vm.isCodeFailed ? colorDanger : colorDarkGrey),),
      ],
    );
  }
}
