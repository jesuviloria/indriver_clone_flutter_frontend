import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class LoginState extends Equatable {
  final GlobalKey<FormState>? formkey;
  final String email;
  final String password;

  const LoginState({
    this.formkey,
    this.email = '',
    this.password = '',
  });

  LoginState copyWith(
      {GlobalKey<FormState>? formkey, String? email, String? password}) {
    return LoginState(
        email: email ?? this.email,
        password: password ?? this.password,
        formkey: formkey);
  }

  @override
  List<Object?> get props => [email, password];
}
