import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:technoapp/screens/*auth/signIn/signInScreen.dart';
import '../components/widgetsAuth.dart';

class ResetPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double sizeH = MediaQuery.of(context).size.height;
    double sizeV = MediaQuery.of(context).size.width;

    void openSignInPage() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => SignInScreen()));
    }

    return MaterialApp(
            debugShowCheckedModeBanner: false,

      home: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/Forgot password.png'),
                  fit: BoxFit.cover)),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: sizeH * 0.1,
                  ),
                  Container(
                    height: sizeH * 0.25,
                    // width: sizeV * 0.05,
                    child: Text(
                      'Forgot \npassword?',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 60,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  
                  PasswordInput(
                    icon: FontAwesomeIcons.lock,
                    hint: 'Enter New Password',
                    inputType: TextInputType.phone,
                    inputAction: TextInputAction.done,
                  ),
                  SizedBox(
                    height: sizeH * 0.02,
                  ),
                  PasswordInput(
                    icon: FontAwesomeIcons.lock,
                    hint: 'Confirm Password',
                    inputType: TextInputType.phone,
                    inputAction: TextInputAction.done,
                  ),
                  SizedBox(
                    height: sizeH * 0.03,
                  ),
                  RoundedButton(
                    buttonName: 'Sign in',
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
