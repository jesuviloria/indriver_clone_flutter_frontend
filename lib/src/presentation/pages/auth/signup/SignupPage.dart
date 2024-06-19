import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:indriver_clone_flutter_frontend/src/presentation/pages/auth/signup/SignupContent.dart';
import 'package:indriver_clone_flutter_frontend/src/presentation/pages/auth/signup/bloc/SignupBloc.dart';
import 'package:indriver_clone_flutter_frontend/src/presentation/pages/auth/signup/bloc/SignupState.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: BlocBuilder<SignupBloc, SignupState>(
      builder: (context, state) {
        return SignupContent(state);
      },
    ));
  }
}
