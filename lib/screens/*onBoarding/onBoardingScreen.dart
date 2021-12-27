import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:technoapp/constant/color.dart';
import 'package:technoapp/main.dart';
import 'package:technoapp/screens/*auth/signIn/signInScreen.dart';
import 'package:technoapp/screens/*onBoarding/components/model.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingScreen> {
  
  int currentPage = 0;

  PageController _pageController = PageController(initialPage: 0);

  AnimatedContainer dotIndicator(index) {
    return AnimatedContainer(
      margin: EdgeInsets.only(right: 5),
      duration: Duration(milliseconds: 400),
      height: 12,
      width: 12,
      decoration: BoxDecoration(
        color: currentPage == index ? Colors.grey[800] : Colors.grey[400],
        shape: BoxShape.circle,
      ),
    );
  }

  Future setSeenonboard() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    seenOnboard = await prefs.setBool('seenOnboard', true);
    // this will set seenOnboard to true when running onboard page for first time.
  }

  @override
  void initState() {
    super.initState();
    setSeenonboard();
  }

  @override
  Widget build(BuildContext context) {
    double sizeH = MediaQuery.of(context).size.height;
    double sizeV = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: kWhite,
      body: SafeArea(
        child: Column(children: [
          Expanded(
            flex: 10,
            child: PageView.builder(
              controller: _pageController,
              onPageChanged: (value) {
                setState(() {
                  currentPage = value;
                });
              },
              itemCount: onboardingContents.length,
              itemBuilder: (context, index) => Column(
                children: [
                  SizedBox(
                    height: sizeH * 0.05,
                  ),
                  Container(
                    height: sizeH * 0.5,
                    child: Image.asset(
                      onboardingContents[index].image,
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(
                    height: sizeH * 0.01,
                  ),
                  Text(
                    onboardingContents[index].title,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 45),

                    // style: kTitle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          Padding(
              padding:  EdgeInsets.all(sizeH * 0.025),
            child: Column(
              children: [
                currentPage == onboardingContents.length - 1
                    ? Container(
                        child: Column(
                          children: [
                            Container(
                              height: sizeH * 0.05,
                              width: sizeV * 0.5,
                              // color: Colors.blue[700],
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(sizeH * 0.02),
                                color: kBlue700,
                              ),
                              child: TextButton(
                                child: Text(
                                  'تسجيل الدخول',
                                  style: TextStyle(
                                    color: kWhite,
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => SignInScreen(),
                                      ));
                                },
                              ),
                            ),
                            SizedBox(
                              height: sizeH * 0.1,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: List.generate(
                                onboardingContents.length,
                                (index) => dotIndicator(index),
                              ),
                            )
                          ],
                        ),
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          onboardingContents.length,
                          (index) => dotIndicator(index),
                        ),
                      ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
