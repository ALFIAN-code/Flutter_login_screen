import 'icons/my_flutter_app_icons.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    double getSmallDiameters(BuildContext context) =>
        MediaQuery.of(context).size.width * 2 / 3;
    double getBigDiameters(BuildContext context) =>
        MediaQuery.of(context).size.width * 7 / 8;

    return Scaffold(
      // backgroundColor: const Color(0xffeeedef),
      body: Stack(children: [
        // circle shape small
        Positioned(
          right: -MediaQuery.of(context).size.width * 0.2,
          top: -MediaQuery.of(context).size.width * 0.2,
          child: Container(
            width: getSmallDiameters(context),
            height: getSmallDiameters(context),
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                    colors: [Color(0xFFB226B2), Color(0xffff6da7)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter)),
          ),
        ),

        //circle shape big
        Positioned(
          left: -MediaQuery.of(context).size.width * 0.2,
          top: -MediaQuery.of(context).size.width * 0.2,
          child: Container(
            width: getBigDiameters(context),
            height: getBigDiameters(context),
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                    colors: [Color(0xFFB226B2), Color(0xffff6da7)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter)),
          ),
        ),

        //dribble text
        Positioned(
            left: MediaQuery.of(context).size.width * 0.15,
            top: MediaQuery.of(context).size.width * 0.15,
            child: const Text(
              'dribble',
              style: TextStyle(
                  fontFamily: 'pacifico', fontSize: 35, color: Colors.white),
            )),

        // button circle shape
        Positioned(
          right: -MediaQuery.of(context).size.width * 0.4,
          bottom: -MediaQuery.of(context).size.width * 0.4,
          child: Container(
            width: getBigDiameters(context),
            height: getBigDiameters(context),
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Color(0xfff3e9ee)),
          ),
        ),

        Align(
          child: ListView(
            children: [
              Container(
                  margin: const EdgeInsets.fromLTRB(35, 320, 0, 0),
                  child: Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 40,
                      color: Colors.grey[700],
                      fontWeight: FontWeight.bold
                    ),
                  )),

              //login container
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: const Color(0xffff6da7).withAlpha(100),
                          spreadRadius: 1,
                          blurRadius: 10,
                          blurStyle: BlurStyle.normal,
                          offset: const Offset(5, 5))
                    ]
                    // border: Border.all(color: Colors.grey)
                    ),
                margin: const EdgeInsets.fromLTRB(20, 40, 20, 10),
                padding: const EdgeInsets.fromLTRB(20, 10, 10, 35),
                child: Column(
                  children: [
                    //email field
                    const TextField(
                      autocorrect: false,
                      decoration: InputDecoration(
                          icon: Icon(
                            Icons.email,
                            color: Color(0xFFB226B2),
                          ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFB226B2))),
                          labelText: 'Email',
                          labelStyle: TextStyle(color: Color(0xFFB226B2))),
                    ),

                    //spacer
                    Container(
                      height: 15,
                    ),

                    //password field
                    const TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          icon: Icon(
                            Icons.key,
                            color: Color(0xFFB226B2),
                          ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFFB226B2))),
                          labelText: 'Password',
                          labelStyle: TextStyle(color: Color(0xFFB226B2))),
                    )
                  ],
                ),
              ),

              //forgot password
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  margin: const EdgeInsets.only(right: 20),
                  child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        'FORGOT PASSWORD',
                        textAlign: TextAlign.center,
                      )),
                ),
              ),

              //login button
              Container(
                margin: const EdgeInsets.fromLTRB(20, 30, 20, 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.5,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color(0xffff6da7)),
                      child: Material(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.transparent,
                        child: InkWell(
                          borderRadius: BorderRadius.circular(20),
                          onTap: () {},
                          child: const Center(
                            child: Text(
                              'Login',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 17),
                            ),
                          ),
                        ),
                      ),
                    ),

                    //facebook button
                    IconButton(
                        iconSize: 50,
                        onPressed: () {},
                        icon: Icon(
                          Icons.facebook,
                          color: Colors.blue[800],
                        )),

                    //twitter button
                    IconButton(
                        iconSize: 50,
                        onPressed: () {},
                        icon: const Icon(
                          MyFlutterApp.twitter_circled,
                          color: Colors.lightBlue,
                        )),
                  ],
                ),
              ),

              //dont have an account
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('DONT HAVE AN ACCOUNT? '),
                  TextButton(onPressed: () {}, child: const Text('Sign Up'))
                ],
              )
            ],
          ),
        )
      ]),
    );
  }
}
