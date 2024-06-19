import 'package:indriver_clone_flutter_frontend/src/presentation/utils/BlocFormItem.dart';

abstract class SignupEvent {}

class SignupInitEvent extends SignupEvent {}

class NameChanged extends SignupInitEvent {
  final BlocFormItem name;
  NameChanged({required this.name});
}

class LastnameChanged extends SignupInitEvent {
  final BlocFormItem lastname;
  LastnameChanged({required this.lastname});
}

class EmailChanged extends SignupInitEvent {
  final BlocFormItem email;
  EmailChanged({required this.email});
}

class PhoneChanged extends SignupInitEvent {
  final BlocFormItem phone;
  PhoneChanged({required this.phone});
}

class PasswordChanged extends SignupInitEvent {
  final BlocFormItem password;
  PasswordChanged({required this.password});
}

class ConfirmPasswordChanged extends SignupInitEvent {
  final BlocFormItem confirmPassword;
  ConfirmPasswordChanged({required this.confirmPassword});
}

class FormSubmit extends SignupInitEvent {}

class FormReset extends SignupInitEvent {}
