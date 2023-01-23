mixin FormattedPhone {
  formattedPhone(String phone) {
    final formattedPhone = phone.replaceAll(RegExp(r'\+|\s'), '');
    return formattedPhone.replaceAll(r'\+|\s', '');
  }
}
