Function(String) cardNumberValidator = (String cardNumber) {
  if(cardNumber.isEmpty || cardNumber.length != 16 || cardNumber.contains(RegExp(r'[0-9]')) == false) {
    return "Invalid card number ❌";
  }
};

Function(String) expireMonthValidator = (String expireMonth) {
  if(expireMonth.isEmpty || ['1','2','3','4','5','6','7','8','9','10','11','12'].contains(expireMonth) == false) {
    return "Invalid month ❌";
  }
};

Function(String) expireYearValidator = (String expireYear) {
  if(expireYear.isEmpty || int.parse(expireYear) < 2024) {
    return "Invalid year ❌";
  }
};

Function(String) cardHolderValidator = (String cardHolder) {
  if(cardHolder.isEmpty || !cardHolder.contains(RegExp(r'[a-zA-Z]'))) {
    return "Invalid card holder ❌";
  }
};