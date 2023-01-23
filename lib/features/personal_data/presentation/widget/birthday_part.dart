part of '../personal_data_screen.dart';

class BirthdayPart extends StatelessWidget {
  const BirthdayPart({Key? key}) : super(key: key);

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
          const Text("Дата рождения", style: textStyleH4,),
          const SizedBox(height: 50,),
          Row(
            children: [
              SizedBox(
                width: 63,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('День', style: textStyleText,),
                    const SizedBox(height: 5,),
                    MainTextField(
                      inputFormatters: [vm.dayFormatter],
                      style: textStyleH5.copyWith(fontWeight: FontWeight.w400),
                      onChanged: (value) {
                        vm.name = value;
                      },
                      hint: "00",
                      textEditingController: vm.dayEditingController,
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 20,),
              SizedBox(
                width: 63,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Месяц', style: textStyleText,),
                    const SizedBox(height: 5,),
                    MainTextField(
                      inputFormatters: [vm.monthFormatter],
                      style: textStyleH5.copyWith(fontWeight: FontWeight.w400),
                      onChanged: (value) {
                        vm.name = value;
                      },
                      hint: "00",
                      textEditingController: vm.monthEditingController,
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 20,),
              SizedBox(
                width: 85,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Год', style: textStyleText,),
                    const SizedBox(height: 5,),
                    MainTextField(
                      inputFormatters: [vm.yearFormatter],
                      style: textStyleH5.copyWith(fontWeight: FontWeight.w400),
                      onChanged: (value) {
                        vm.name = value;
                      },
                      hint: "0000",
                      textEditingController: vm.yearEditingController,
                    ),
                  ],
                ),
              )
            ],
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Flexible(child: Text('Другие пользователи будут видеть только ваш возраст.', style: textStyleText, )),
              const SizedBox(width: 10,),
              FloatingButton(
                onPressed: () {
                  if(vm.yearEditingController.text.length == 4 && vm.monthEditingController.text.length == 2 && vm.dayEditingController.text.length == 2) {
                    vm.indexPart += 1;
                  }
                },
                borderColor: !(context.watch<PersonalDataViewModel>().yearEditingController.text.length == 4 && context.watch<PersonalDataViewModel>().monthEditingController.text.length == 2 && context.watch<PersonalDataViewModel>().dayEditingController.text.length == 2) ? colorDarkGrey : null,
                color: !(context.watch<PersonalDataViewModel>().yearEditingController.text.length == 4 && context.watch<PersonalDataViewModel>().monthEditingController.text.length == 2 && context.watch<PersonalDataViewModel>().dayEditingController.text.length == 2) ? colorWhite : colorBlue,
                iconColor: !(context.watch<PersonalDataViewModel>().yearEditingController.text.length == 4 && context.watch<PersonalDataViewModel>().monthEditingController.text.length == 2 && context.watch<PersonalDataViewModel>().dayEditingController.text.length == 2) ? colorDarkGrey : colorWhite,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
