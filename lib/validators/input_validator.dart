class InputValidator {
  static String? validateInput(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a value';
    } else if (int.parse(value) > 1000) {
      return "Please enter a value below 1000";
    }
    return null;
  }
}
