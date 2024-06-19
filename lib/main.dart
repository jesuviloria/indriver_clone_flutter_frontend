import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:indriver_clone_flutter_frontend/blocProviders.dart';
import 'package:indriver_clone_flutter_frontend/src/presentation/pages/auth/login/loginPage.dart';
import 'package:indriver_clone_flutter_frontend/src/presentation/pages/auth/signup/SignupPage.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: blocProviders,
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        initialRoute: 'login',
        routes: {
          'login': (BuildContext context) => LoginPage(),
          'signup': (BuildContext context) => SignupPage()
        },
      ),
    );
  }
}
