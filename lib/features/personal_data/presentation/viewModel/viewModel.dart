import 'package:aina_project/features/personal_data/presentation/personal_data_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class PersonalDataViewModel extends ChangeNotifier {

  int _indexPart = 0;

  Widget _stagePart = const NamePart();

  int get indexPart => _indexPart;
  get stagePart => _stagePart;

  //name part
  final TextEditingController _nameEditingController = TextEditingController();
  TextEditingController get nameEditingController => _nameEditingController;
  String _name = "";
  String get name => _name;
  set name(value) {
    _name = value;
    notifyListeners();
  }

  //birthday part
  final TextEditingController _dayEditingController = TextEditingController();
  TextEditingController get dayEditingController => _dayEditingController;
  final TextEditingController _monthEditingController = TextEditingController();
  TextEditingController get monthEditingController => _monthEditingController;
  final TextEditingController _yearEditingController = TextEditingController();
  TextEditingController get yearEditingController => _yearEditingController;
  var dayFormatter = MaskTextInputFormatter(
      mask: '##',
      filter: { "#": RegExp(r'\d') },
      type: MaskAutoCompletionType.lazy
  );
  var monthFormatter = MaskTextInputFormatter(
      mask: '##',
      filter: { "#": RegExp(r'\d') },
      type: MaskAutoCompletionType.lazy
  );
  var yearFormatter = MaskTextInputFormatter(
      mask: '####',
      filter: { "#": RegExp(r'\d') },
      type: MaskAutoCompletionType.lazy
  );


  //gender part
  bool? _isMale;
  bool? get isMale => _isMale;
  set isMale(value) {
    _isMale = value;
    notifyListeners();
  }

  set indexPart(value) {
    _indexPart = value;
    if(value == 0) {
      stagePart = const NamePart();
    } else if(value == 1) {
      stagePart = const BirthdayPart();
    } else if(value == 2) {
      stagePart = const GenderPart();
    } else if(value == 3) {
      stagePart = const RegionPart();
    }
    notifyListeners();
  }

  set stagePart(value) {
    _stagePart = value;
    notifyListeners();
  }

  @override
  void dispose() {
    super.dispose();
    nameEditingController.dispose();
  }

}