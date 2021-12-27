import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:technoapp/screens/*auth/forgotPassword/forgot-password.dart';
import '../components/widgetsAuth.dart';

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double sizeH = MediaQuery.of(context).size.height;
    double sizeV = MediaQuery.of(context).size.width;

    void openForgetPassPage() {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => ForgotPassword()));
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
           height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/Sign In (1).png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            // padding:  EdgeInsets.all(sizeH * 0.03),
            padding: EdgeInsets.only(
              right: sizeH * 0.03,
              left: sizeH * 0.03,
              bottom: sizeH * 0.08,
            ),
            child: SingleChildScrollView(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // SizedBox(
                    //   height: sizeH * ,
                    // ),
                    SizedBox(
                      height: sizeH * 0.57,
                    ),

                    TextInputField(
                      icon: FontAwesomeIcons.phone,
                      hint: 'Your Phone',
                      inputType: TextInputType.emailAddress,
                      inputAction: TextInputAction.next,
                    ),
                    PasswordInput(
                      icon: FontAwesomeIcons.lock,
                      hint: 'Password',
                      inputType: TextInputType.phone,
                      inputAction: TextInputAction.done,
                    ),
                    SizedBox(
                      height: sizeH * 0.01,
                    ),
                    GestureDetector(
                      onTap: openForgetPassPage,
                      child: Text(
                        'Forgot Password !?',
                        // style: kBodyText,
                      ),
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
      ),
    );
  }
}
