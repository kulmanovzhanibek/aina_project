import 'package:aina_project/core/const/all_styles.dart';
import 'package:aina_project/core/const/text_styles.dart';
import 'package:aina_project/features/widgets/choose_label/choose_label.dart';
import 'package:flutter/material.dart';

class ChooseLang extends StatefulWidget {
  const ChooseLang({Key? key}) : super(key: key);

  @override
  State<ChooseLang> createState() => _ChooseLangState();
}

class _ChooseLangState extends State<ChooseLang> {

  List<int> isPressed = [];
  List<String> lang = [
    "Қазақша",
    "Русский",
    "English"
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Выберите удобный для вас язык", style: textStyleH4,),
          const SizedBox(height: 50,),
          for(int i = 0; i < 3; i++)
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: ChooseLabel(
                title: lang[i],
                onPressed: () {
                  setState(() {
                    isPressed.clear();
                    isPressed.add(i);
                  });
                },
                isPressed: isPressed.contains(i),
              ),
            ),
        ],
      ),
    );
  }
}
