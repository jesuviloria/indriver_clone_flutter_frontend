import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:indriver_clone_flutter_frontend/src/presentation/pages/auth/login/bloc/LoginBloc.dart';
import 'package:indriver_clone_flutter_frontend/src/presentation/pages/auth/login/bloc/LoginEvent.dart';
import 'package:indriver_clone_flutter_frontend/src/presentation/pages/auth/signup/bloc/SignupBloc.dart';
import 'package:indriver_clone_flutter_frontend/src/presentation/pages/auth/signup/bloc/SignupEvent.dart';

List<BlocProvider> blocProviders = [
  BlocProvider<LoginBloc>(
      create: (context) => LoginBloc()..add(LoginInitEvent())),
  BlocProvider<SignupBloc>(
      create: (context) => SignupBloc()..add(SignupInitEvent()))
];
