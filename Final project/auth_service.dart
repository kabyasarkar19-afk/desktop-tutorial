class AuthService {
  static String? currentUser;

  static bool login(String email, String password) {
    if (email.isNotEmpty && password.isNotEmpty) {
      currentUser = email;
      return true;
    }
    return false;
  }

  static bool signup(String email, String password) {
    if (email.isNotEmpty && password.isNotEmpty) {
      currentUser = email;
      return true;
    }
    return false;
  }
}
