import 'package:aina_project/core/const/all_styles.dart';
import 'package:aina_project/core/const/app_colors.dart';
import 'package:aina_project/core/const/assets_images.dart';
import 'package:aina_project/features/personal_data/presentation/viewModel/viewModel.dart';
import 'package:aina_project/features/widgets/button/floating_button.dart';
import 'package:aina_project/features/widgets/button/main_button.dart';
import 'package:aina_project/features/widgets/choose_label/choose_label.dart';
import 'package:aina_project/features/widgets/loading_layer/loading_layer.dart';
import 'package:aina_project/features/widgets/textField/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pinput/pinput.dart';
import 'package:provider/provider.dart';

part 'widget/personal_data_body.dart';
part 'widget/name_part.dart';
part 'widget/birthday_part.dart';
part 'widget/region_part.dart';
part 'widget/gender_part.dart';

class PersonalDataScreen extends StatelessWidget {
  const PersonalDataScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LoadingLayerProvider(
        child: ChangeNotifierProvider(
            create: (context) => PersonalDataViewModel(),
            child: const PersonalDataBody()
        )
    );
  }
}
