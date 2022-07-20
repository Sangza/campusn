import 'package:cloud_firestore/cloud_firestore.dart';

class UserManagement {
  newUser(user, context) {
    FirebaseFirestore.instance
        .collection('users')
        .add({
          'email': user.email,
          'uid': user.uid,
        })
        .then((value) {})
        .catchError((e) {
          print(e);
        });
  }
}

  // Future<String?> _authUser(LoginData data) {
  //   debugPrint('Name: ${data.name}, Password: ${data.password}');
  //   return Future.delayed(loginTime).then((_) {
  //     if (!users.containsKey(data.name)) {
  //       return 'User not exists';
  //     }
  //     if (users[data.name] != data.password) {
  //       return 'Password does not match';
  //     }
  //     return null;
  //   });
  // }

  // Future<String?> _signupUser(User user){
  //   FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password)
  // }

  // Future<String?> _signupUser(SignupData data) {
  //   debugPrint('Signup Name: ${data.name}, Password: ${data.password}');
  //   return Future.delayed(loginTime).then((_) {
  //     return null;
  //   });
  // }

  // Future<String?> _recoverPassword(String name) {
  //   debugPrint('Name: $name');
  //   return Future.delayed(loginTime).then((_) {
  //     if (!users.containsKey(name)) {
  //       return 'User not exists';
  //     }
  //     return null;
  //   });
  // }
