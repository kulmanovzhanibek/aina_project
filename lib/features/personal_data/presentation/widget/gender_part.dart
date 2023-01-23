part of '../personal_data_screen.dart';

class GenderPart extends StatelessWidget {
  const GenderPart({Key? key}) : super(key: key);

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
          const Text("Укажите свой пол", style: textStyleH4,),
          const SizedBox(height: 50,),
          ChooseLabel(
            title: "Мужской",
            iconLeftAsset: iconMale,
            onPressed: () {
              vm.isMale = true;
            },
            isPressed: context.watch<PersonalDataViewModel>().isMale ?? false,
          ),
          SizedBox(height: 20,),
          ChooseLabel(
            title: "Женский",
            iconLeftAsset: iconMale,
            onPressed: () {
              vm.isMale = false;
            },
            isPressed: context.watch<PersonalDataViewModel>().isMale != null ? (!context.watch<PersonalDataViewModel>().isMale!) : false,
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingButton(
                onPressed: () {
                  if(vm.isMale != null) {
                    vm.indexPart += 1;
                  }
                },
                borderColor: context.watch<PersonalDataViewModel>().isMale == null ? colorDarkGrey : null,
                color: context.watch<PersonalDataViewModel>().isMale == null ? colorWhite : colorBlue,
                iconColor: context.watch<PersonalDataViewModel>().isMale == null ? colorDarkGrey : colorWhite,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
