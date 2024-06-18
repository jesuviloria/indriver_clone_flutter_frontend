import 'package:flutter/material.dart';
import 'package:indriver_clone_flutter_frontend/src/presentation/pages/auth/signup/SignupContent.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SignupContent());
  }
}
