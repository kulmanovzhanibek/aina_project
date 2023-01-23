part of '../personal_data_screen.dart';

class RegionPart extends StatelessWidget {
  const RegionPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final vm = context.read<PersonalDataViewModel>();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 34.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 60,),
          const Text("Регион", style: textStyleH4,),
          const SizedBox(height: 10,),
          Text("Выберите место вашего жительства",
            style: textStyle1Description.copyWith(color: colorBlackDesc),),
          const SizedBox(height: 40,),
          MainTextField(
            textEditingController: TextEditingController(),
            hint: "Выбрать город",
            onPressed: () {

            },
          ),
          const SizedBox(height: 10,),
          Container(
            height: 300,
            width: MediaQuery
                .of(context)
                .size
                .width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(width: 1, color: colorDarkGrey)
            ),
            child: ListView.separated(
              itemCount: 10,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Container(
                  height: 30,
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  color: colorSecondary,
                );
              },
              separatorBuilder: (BuildContext context,
                  int index) => const SizedBox(height: 10,),
            ),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingButton(
                onPressed: () {
                  if (vm.isMale != null) {
                    vm.indexPart += 1;
                  }
                },
                borderColor: context
                    .watch<PersonalDataViewModel>()
                    .isMale == null ? colorDarkGrey : null,
                color: context
                    .watch<PersonalDataViewModel>()
                    .isMale == null ? colorWhite : colorBlue,
                iconColor: context
                    .watch<PersonalDataViewModel>()
                    .isMale == null ? colorDarkGrey : colorWhite,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
