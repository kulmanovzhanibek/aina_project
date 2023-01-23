import 'package:aina_project/core/const/all_styles.dart';
import 'package:aina_project/features/auth/presentation/viewModel/viewModel.dart';
import 'package:aina_project/features/widgets/auth_text_field/auth_text_field.dart';
import 'package:aina_project/features/widgets/check_box/check_box.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class RequestCodePart extends StatelessWidget {
  const RequestCodePart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final vm = context.watch<AuthViewModel>();
    return Column(
      children: [
        const Text(
          "Войти по номеру телефона", style: textStyleH5,),
        const SizedBox(height: 50,),
        AuthTextField(
          textEditingController: vm.textEditingController,
          onChanged: (value) {
              if (value.length == 13 && vm.isAgree) {
                vm.disabledButton = false;
              } else {
                vm.disabledButton = true;
              }
          },
        ),
        const SizedBox(height: 34,),
        Row(
          children: [
            CheckBox(
              isAgree: vm.isAgree,
              onPressed: () {
                  vm.isAgree = !vm.isAgree;
                  if (vm.textEditingController.text.length == 13 &&
                      vm.isAgree) {
                    vm.disabledButton = false;
                  } else {
                    vm.disabledButton = true;
                  }
              },
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: "Согласие на ",
                      style: textStyle2Description
                          .copyWith(color: colorBlackDesc),),
                    TextSpan(text: "пользовательское соглашение ",
                      style: textStyle2Description.copyWith(
                        decoration: TextDecoration.underline,),),
                    TextSpan(
                      text: "и ", style: textStyle2Description
                        .copyWith(color: colorBlackDesc),),
                    TextSpan(text: "политика конфиденциальности.",
                      style: textStyle2Description.copyWith(
                        decoration: TextDecoration.underline,),)
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
