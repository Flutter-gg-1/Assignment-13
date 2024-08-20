String currentCardNumber = "";
bool isValidCardNumber = false;

String currentExpireMonth = "";
bool isValidExpireMonth = false;

String currentExpireYear = "";
bool isValidExpireYear = false;

String currentCardHolder = "";
bool isValidCardHolder = false;

Function(String) cardNumberValidator = (String cardNumber) {
  currentCardNumber = cardNumber;
  if(cardNumber.isEmpty || cardNumber.length != 16 || cardNumber.contains(RegExp(r'[a-zA-Z]')) || cardNumber.contains(RegExp(r'[0-9]')) == false) {
    isValidCardNumber = false;
    return "Invalid card number ❌";
  }
  else {
    isValidCardNumber = true;
  }
};

Function(String) expireMonthValidator = (String expireMonth) {
  currentExpireMonth = expireMonth;
  if(expireMonth.isEmpty || ['1','2','3','4','5','6','7','8','9','10','11','12'].contains(expireMonth) == false) {
    isValidExpireMonth = false;
    return "Invalid month ❌";
  }
  else{
    currentExpireMonth = ['10','11','12'].contains(currentExpireMonth) ? currentExpireMonth : "0$currentExpireMonth";
    isValidExpireMonth = true;
  }
};

Function(String) expireYearValidator = (String expireYear) {
  currentExpireYear = expireYear;
  if(expireYear.isEmpty || int.tryParse(expireYear)==null || (int.parse(expireYear) < 2024 && int.parse(expireYear) > 2100)) {
    isValidExpireYear = false;
    return "Invalid year ❌";
  }
  else {
    isValidExpireYear = true;
  }
};

Function(String) cardHolderValidator = (String cardHolder) {
  currentCardHolder = cardHolder;
  if(cardHolder.isEmpty || !cardHolder.contains(RegExp(r'[a-zA-Z]'))) {
    isValidCardHolder = false;
    return "Invalid card holder ❌";
  }
  else {
    isValidCardHolder = true;
  }
};