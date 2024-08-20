class Validations {
  static String? email(String value) {
    final regex = RegExp(r"[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,64}");
    if (regex.hasMatch(value)) {
      return null; // Return null if the value is valid (no error)
    } else {
      return 'Please enter a valid email address'; // Return an error message if invalid
    }
  }

  static String? pwd(String value) {
    final regex =
        RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#$&*~]).{8,}$');
    if (regex.hasMatch(value) || value.isEmpty) {
      // Valid email address
      return null; // Return null if the value is valid (no error)
    } else {
      // Invalid email address
      return '''
Password: 
* should contain at least one upper case
* should contain at least one lower case
* should contain at least one digit
* should contain at least one Special character
* Must be at least 8 characters in length
                '''; // Return an error message if invalid
    }
  }

  static String? fullName(String value) {
    final regex = RegExp(r'^[a-zA-Z]+$');
    if (regex.hasMatch(value) || value.isEmpty) {
      // Valid email address
      return null;
    } else {
      // Invalid email address
      return 'Please enter a valid Name';
    }
  }

  static String? phoneNum(String value) {
    final regex = RegExp(r'^\d{10}$');
    if (regex.hasMatch(value) || value.isEmpty) {
      // Valid email address
      return null;
    } else {
      // Invalid email address
      return 'Enter a 10 digit number';
    }
  }

  static String? creditCardNum(String value) {
    final regex = RegExp(r'^\d{16}$');
    if (regex.hasMatch(value) || value.isEmpty) {
      // Valid email address
      return null;
    } else {
      // Invalid email address
      return 'Enter a 16 digit number';
    }
  }

  static String? creditCardExpiry(String value) {
    final regex = RegExp(r'^(0[1-9]|1[0-2])\/\d{2}$');
    if (regex.hasMatch(value) || value.isEmpty) {
      // Valid email address
      return null;
    } else {
      // Invalid email address
      return 'MM/YY';
    }
  }

  static String? creditCardCVV(String value) {
    final regex = RegExp(r'^\d{3}$');
    if (regex.hasMatch(value) || value.isEmpty) {
      // Valid email address
      return null;
    } else {
      // Invalid email address
      return 'Enter a 3 digit CVV';
    }
  }
}
