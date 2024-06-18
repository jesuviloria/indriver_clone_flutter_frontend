import 'package:flutter/material.dart';
import 'package:indriver_clone_flutter_frontend/src/presentation/widgets/DefaultButton.dart';
import 'package:indriver_clone_flutter_frontend/src/presentation/widgets/DefaultTextField.dart';

class LoginContent extends StatelessWidget {
  const LoginContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color.fromARGB(255, 12, 38, 145),
                  Color.fromARGB(255, 34, 156, 249)
                ]),
          ),
          padding: EdgeInsets.only(left: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _textLoginRotated(),
              SizedBox(height: 50),
              _textSignupRotated(context),
              SizedBox(height: 90),
            ],
          ),
        ),
        Container(
          //height: MediaQuery.of(context).size.height * 0.93,
          //width: MediaQuery.of(context).size.width * 0.8,
          margin: EdgeInsets.only(left: 60, bottom: 60),
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Color.fromARGB(255, 14, 29, 166),
                  Color.fromARGB(255, 30, 112, 227)
                ]),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35), bottomLeft: Radius.circular(35)),
          ),
          child: Container(
            margin: EdgeInsets.only(left: 25, right: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 50),
                _textTitle('Welcome'),
                _textTitle('back...'),
                _imageTitle(),
                _textLogin(),
                DefaultTextField(text: 'Email', icon: Icons.email_outlined),
                DefaultTextField(
                  text: 'Password',
                  icon: Icons.lock_outlined,
                  margin: EdgeInsets.only(top: 15, left: 20, right: 20),
                ),
                Spacer(),
                DefaultButton(text: 'Sign in'),
                _separaterOr(),
                SizedBox(
                  height: 10,
                ),
                _textInfoOptions(context),
                SizedBox(height: 50)
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _textLoginRotated() {
    return RotatedBox(
      quarterTurns: 1,
      child: Text(
        'Log in',
        style: TextStyle(
            color: Colors.white, fontSize: 27, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _textSignupRotated(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, 'signup');
      },
      child: RotatedBox(
        quarterTurns: 1,
        child: Text(
          'Sign up',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
    );
  }

  Widget _textTitle(String text) {
    return Text(
      text,
      style: TextStyle(
          fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
    );
  }

  Widget _imageTitle() {
    return Container(
      alignment: Alignment.centerRight,
      child: Image.asset(
        'assets/img/car_white.png',
        width: 150,
        height: 150,
      ),
    );
  }

  Widget _textLogin() {
    return Text(
      'Log in',
      style: TextStyle(
          fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
    );
  }

  Widget _separaterOr() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 25,
          height: 1,
          color: Colors.white,
          margin: EdgeInsets.only(right: 5),
        ),
        Text(
          'O',
          style: TextStyle(
            color: Colors.white,
            fontSize: 17,
          ),
        ),
        Container(
          width: 25,
          height: 1,
          color: Colors.white,
          margin: EdgeInsets.only(left: 5),
        ),
      ],
    );
  }

  Widget _textInfoOptions(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '¿No tienes cuenta?',
          style: TextStyle(color: Colors.grey[100], fontSize: 17),
        ),
        SizedBox(width: 7),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, 'signup');
          },
          child: Text(
            'Sign up',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 17),
          ),
        )
      ],
    );
  }
}
