import 'package:scoped_model/scoped_model.dart';

class UserModel extends Model {
  bool isLoadgin = false;

  void signUp() {}

  void signIn() async {
    isLoadgin = true;
    notifyListeners();

    await Future.delayed(Duration(seconds: 5));

    isLoadgin = false;
    //Notifica tudo que está dentro do scooped
    notifyListeners();
  }

  void recoverPass() {}

  bool isLoggedIn() {
    return false;
  }
}
