import 'dart:js';

import 'package:campus_pay/znewproject/loginsetup/usermanagement.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  final String email;
  final String password;

  const SignUp({Key? key, required this.email, required this.password})
      : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();

  Future<String?> signupUser(signinUser) {
    var a = FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: password)
        .then((signinUser) {
      UserManagement().newUser(signinUser, context);
    }).catchError((e) {
      print(e);
    });
    return a;
  }
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
