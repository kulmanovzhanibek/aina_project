class RegExpression {
  static RegExp hasOneUppercase = RegExp(r'[A-Z]+');
  static RegExp hasOneLowercase = RegExp(r'[a-z]+');
  static RegExp hasOneDigit = RegExp(r'[0-9]+');
  static RegExp hasOneSpecial = RegExp(
      r'[\^\[\!\@\#\$\%\^\&\*\(\)\_\+\-\=\[\]\{\}\;\:\\\|\,\.\<\>\/\?\]\*\$]+');
  static RegExp hasQwerty = RegExp(r'(qwerty|123456)+');
  static RegExp isValidPassRange = RegExp(r'^.{8,30}$');
}
