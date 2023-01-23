part of '../auth_screen.dart';

class AuthBody extends StatelessWidget {
  const AuthBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final vm = context.watch<AuthViewModel>();
    return Scaffold(
      backgroundColor: colorWhite,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: colorWhite,
        titleSpacing: 0,
        leading: Row(
          children: [
            const SizedBox(width: 16,),
            InkWell(
                onTap: () {
                  if(vm.verifyCodeStage == true) {
                    context.read<AuthBloc>().add(const AuthEvent.initial());
                    vm.verifyCodeStage = false;
                  } else {
                    context.router.pop();
                  }
                },
                child: SvgPicture.asset(iconBack, color: colorBlue,)
            ),
          ],
        ),
      ),
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          state.maybeMap(
            orElse: () => LoadingLayer.hide(),
            loading: (state) => LoadingLayer.show(context),
          );

          state.maybeMap(
            orElse: () {},
            failure: (error) => {
              print(error.failure)
            },
            requestCodeSuccess: (state) => vm.verifyCodeStage = true,
            verifyCodeSuccess: (state) {
              vm.verifyCodeStage = false;
              context.replaceRoute(const PersonalDataScreenRoute());
            },
          );
        },
        builder: (context, state) {
          return SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 34.0),
                child: Column(
                  children: [
                    const SizedBox(height: 56,),
                    state.maybeMap(
                        orElse: () =>  const SizedBox.shrink(),
                        initial: (state) => const RequestCodePart(),
                        requestCodeSuccess: (state) => const VerifyCodePart(),
                        failure: (state) => vm.verifyCodeStage == true ? const VerifyCodePart() : const RequestCodePart()
                    ),
                    const Spacer(),
                    MainButton(
                      onPressed: () {
                        if(vm.verifyCodeStage == true) {
                          if (!vm.disabledButton) {
                            context.read<AuthBloc>().add(VerifyCodeEvent(vm.textEditingController.text, vm.codeEditingController.text));
                            vm.disabledButton = true;
                          }
                          if(state is AuthFailure) {
                            vm.isCodeFailed = true;
                          } else {
                            vm.isCodeFailed = false;
                          }
                        } else {
                          if (!vm.disabledButton) {
                            context.read<AuthBloc>().add(RequestCodeEvent(vm.textEditingController.text));
                            vm.disabledButton = true;
                          }
                        }
                      },
                      disabled: vm.disabledButton,
                      title: 'Продолжить',
                    ),
                    const SizedBox(height: 30,),
                  ],
                ),
              )
          );
        },
      ),
    );
  }
}
