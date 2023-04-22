import 'package:firebase_auth/firebase_auth.dart' show User;
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

@immutable
class AuthUser {
  final String? email;
  final bool isEmailVerified;
  const AuthUser({required this.email, required this.isEmailVerified});
  factory AuthUser.fromFirebase(User user) =>
      AuthUser(email: user.email, isEmailVerified: user.emailVerified);

  // void testing() {
  //   AuthUser(isEmailVerified: true);
  // }
}

// class MyAuthUser extends AuthUser {
//   bool isBla = false;
//   MyAuthUser(bool isEmailVerified) : super(isEmailVerified);
// }
