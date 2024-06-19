import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:indriver_clone_flutter_frontend/src/presentation/utils/BlocFormItem.dart';

class SignupState extends Equatable {
  final BlocFormItem name;
  final BlocFormItem lastname;
  final BlocFormItem email;
  final BlocFormItem phone;
  final BlocFormItem password;
  final BlocFormItem confirmPassword;
  final GlobalKey<FormState>? formKey;

  const SignupState({
    this.name = const BlocFormItem(error: 'Ingresa el nombre'),
    this.lastname = const BlocFormItem(error: 'Ingresa el Apellido'),
    this.email = const BlocFormItem(error: 'Ingresa el Email'),
    this.phone = const BlocFormItem(error: 'Ingresa el Telefono'),
    this.password = const BlocFormItem(error: 'Ingresa la Contraseña'),
    this.confirmPassword =
        const BlocFormItem(error: 'Ingresa la Confirmacion de Contraseña'),
    this.formKey,
  });

  SignupState copyWith(
      {BlocFormItem? name,
      BlocFormItem? lastname,
      BlocFormItem? email,
      BlocFormItem? phone,
      BlocFormItem? password,
      BlocFormItem? confirmPassword,
      GlobalKey<FormState>? formKey}) {
    return SignupState(
      name: name ?? this.name,
      lastname: lastname ?? this.lastname,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      password: password ?? this.password,
      confirmPassword: confirmPassword ?? this.confirmPassword,
      formKey: formKey,
    );
  }

  @override
  List<Object?> get props =>
      [name, lastname, email, phone, password, confirmPassword];
}
