import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:flutter/material.dart';

class UserModel extends Model {
  FirebaseAuth _auth = FirebaseAuth.instance;
  FirebaseUser firebaseUser;
  Map<String, dynamic> userData = Map();

  bool isLoadgin = false;

  void signUp(
      {@required Map<String, dynamic> userData,
      @required String pass,
      @required VoidCallback onSuccess,
      @required VoidCallback onFail}) async {
    isLoadgin = true;
    notifyListeners();

    _auth
        .createUserWithEmailAndPassword(
            email: userData["email"], password: pass)
        .then((user) async {
      firebaseUser = user as FirebaseUser;

      await _saveUserData(userData);
      onSuccess();
      isLoadgin = false;
      notifyListeners();
    }).catchError((erro) {});
  }

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

  Future<Null> _saveUserData(Map<String, dynamic> userData) async {
    this.userData = userData;
    await Firestore.instance
        .collection("users")
        .document(firebaseUser.uid)
        .setData(userData);
  }
}
