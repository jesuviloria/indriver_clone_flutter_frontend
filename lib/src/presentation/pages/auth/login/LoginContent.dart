import 'package:flutter/material.dart';

class LoginContent extends StatelessWidget {
  const LoginContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Color.fromARGB(255, 21, 152, 213),
          padding: EdgeInsets.only(left: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RotatedBox(
                quarterTurns: 1,
                child: Text(
                  'Log in',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 27,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 50),
              RotatedBox(
                quarterTurns: 1,
                child: Text(
                  'Sign up',
                  style: TextStyle(color: Colors.white, fontSize: 24),
                ),
              ),
              SizedBox(height: 90),
            ],
          ),
        ),
        Container(
          //height: MediaQuery.of(context).size.height * 0.93,
          //width: MediaQuery.of(context).size.width * 0.8,

          margin: EdgeInsets.only(left: 60, bottom: 60),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 24, 181, 254),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35), bottomLeft: Radius.circular(35)),
          ),
          child: Container(
            margin: EdgeInsets.only(left: 25, right: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 50),
                Text(
                  'Welcome',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'back...',
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  alignment: Alignment.centerRight,
                  child: Image.asset(
                    'assets/img/car_white.png',
                    width: 150,
                    height: 150,
                  ),
                ),
                Text(
                  'Log in',
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                  height: 50,
                  margin: EdgeInsets.only(top: 50, left: 20, right: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15)),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                        label: Text('Email'),
                        border: InputBorder.none,
                        prefixIcon: Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Wrap(
                              alignment: WrapAlignment.spaceEvenly,
                              children: [
                                Icon(Icons.email_outlined),
                                Container(
                                  height: 20,
                                  width: 1,
                                  color: Colors.grey,
                                )
                              ]),
                        )),
                  ),
                ),
                Container(
                  height: 50,
                  margin: EdgeInsets.only(top: 20, left: 20, right: 20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15)),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                        label: Text('Password'),
                        border: InputBorder.none,
                        prefixIcon: Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Wrap(
                              alignment: WrapAlignment.spaceEvenly,
                              children: [
                                Icon(Icons.key_outlined),
                                Container(
                                  height: 20,
                                  width: 1,
                                  color: Colors.grey,
                                )
                              ]),
                        )),
                  ),
                ),
                Spacer(),
                Container(
                  height: 45,
                  width: MediaQuery.of(context).size.width,
                  //alignment: Alignment.center,
                  margin: EdgeInsets.only(bottom: 30, left: 20, right: 20),
                  child: ElevatedButton(
                    onPressed: () {},
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.white),
                    child: Text(
                      'Sign in',
                      style: TextStyle(
                          color: Colors.cyan,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '¿No tienes cuenta?',
                      style: TextStyle(color: Colors.grey[100], fontSize: 17),
                    ),
                    SizedBox(width: 7),
                    Text(
                      'Registrate',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    )
                  ],
                ),
                SizedBox(height: 50)
              ],
            ),
          ),
        ),
      ],
    );
  }
}
