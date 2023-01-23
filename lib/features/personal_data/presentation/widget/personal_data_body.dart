part of '../personal_data_screen.dart';

class PersonalDataBody extends StatelessWidget {
  const PersonalDataBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final vm = context.watch<PersonalDataViewModel>();
    return Scaffold(
      backgroundColor: colorWhite,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: InkWell(
                      onTap: () {
                        if (vm.indexPart != 0) {
                          vm.indexPart -= 1;
                        }
                      },
                      child: SvgPicture.asset(iconBack, color: colorBlue,)
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 34.0),
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                            text: "${vm.indexPart + 1}",
                            style: textStyle1Description),
                        TextSpan(text: "/8",
                            style: textStyle1Description.copyWith(
                                color: colorBlackDesc)),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: vm.stagePart,
            ),
            const SizedBox(height: 40,)
          ],
        ),
      ),
    );
  }
}
