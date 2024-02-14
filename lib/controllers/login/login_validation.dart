validateEmail(String email) {
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegex).hasMatch(email)) {
    return email;
  } else {
    return null;
  }
}

validatePassword(String password) {
  if (password.isEmpty) {
    return null;
  }
}
