part of '../personal_data_screen.dart';

class NamePart extends StatelessWidget {
  const NamePart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final vm = context.read<PersonalDataViewModel>();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 34.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 142,),
          const Text("Как вас зовут?", style: textStyleH4,),
          const SizedBox(height: 10,),
          Text("Имя нельзя изменить в настройках.", style: textStyle1Description.copyWith(color: colorBlackDesc),),
          const SizedBox(height: 50,),
          MainTextField(
            onChanged: (value) {
              vm.name = value;
            },
            hint: "Как вас зовут?",
            textEditingController: vm.nameEditingController,
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Flexible(child: Text('Это имя будут видеть другие пользователи.', style: textStyleText, )),
              const SizedBox(width: 10,),
              FloatingButton(
                onPressed: () {
                  if(vm.name != "" && vm.indexPart < 8) {
                    vm.indexPart += 1;
                  }
                },
                borderColor: context.watch<PersonalDataViewModel>().name == "" ? colorDarkGrey : null,
                color: context.watch<PersonalDataViewModel>().name == "" ? colorWhite : colorBlue,
                iconColor: context.watch<PersonalDataViewModel>().name == "" ? colorDarkGrey : colorWhite,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
