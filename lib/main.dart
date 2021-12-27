import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:technoapp/background.dart';
import 'package:technoapp/background1.dart';
import 'package:technoapp/screens/*homeMain/home/homeScreen.dart';
import 'package:technoapp/screens/*profile/profileScreen.dart';
import 'screens/*auth/signIn/signInScreen.dart';
import 'screens/*homeMain/dontHaveLeads/dontHaveLeads.dart';
import 'screens/*leads/archiveLeads/archiveLeads.dart';
import 'screens/*leads/filterLeads/btnSheetfilterLeads.dart';
import 'screens/*leads/leadFollowingUp/leadFollowingUp.dart';
import 'screens/*leads/leadProfile/leadProfile.dart';
import 'screens/*menu/notifications/DontHavNotifScreen.dart';
import 'screens/*menu/notifications/notificationsScreen.dart';
import 'screens/*menu/projects/projectsScreen.dart';
import 'screens/*menu/services/servicesScreen.dart';
import 'screens/*menu/servicesDetails.dart/servicesDetailsScreen.dart';
import 'screens/*menu/unit/unitScreen.dart';
import 'screens/*menu/units/unitsScreen.dart';
import 'screens/*onBoarding/onBoardingScreen.dart';
import 'screens/splash/splashScreen.dart';

bool? seenOnboard;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // // to show status bar
  // SystemChrome.setEnabledSystemUIOverlays(
  //     [SystemUiOverlay.bottom, SystemUiOverlay.top]);
  // to load onboard for the first time only
  SharedPreferences pref = await SharedPreferences.getInstance();
  seenOnboard = pref.getBool('seenOnboard') ?? false; //if null set to false

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return

        // ScreenUtilInit(
        //     designSize: Size(375, 812),
        //     builder: () =>

        MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CRM App',

      // theme: ThemeData(
      //   textTheme: GoogleFonts.josefinSansTextTheme(
      //       Theme.of(context).textTheme),
      //   primarySwatch: Colors.blue,
      //   visualDensity: VisualDensity.adaptivePlatformDensity,
      // ),
      theme: ThemeData(fontFamily: 'Cairo'),

      // home: seenOnboard == true ? SignInScreen() : OnBoardingPage(),
      // home: FloatingBtuTest(),
      // home:DontHaveLeads(),
      // home:DontHaveTasks(),
      // home: HomeScreen(),
      // home: DontHaveTasks(),
      // home: DontHaveLeads(),
      // home: OpenFloatBtu(),
      // home: Menu(),
      // home: DontHaveNotifications(),
      // home: Services(),
      // home: SubServices(),
      // home: ServiceDetails(),
      // home: ProjectsScreen(),
      // home:UnitsScreen(),
      // home: ProfileScreen(),
      // home: NotificationsScreen(),
      // home: DontHavNotiScreen(),
      // home:UnitScreen(),
      // home: LeadProfile(),
      // home:LeadsScreen(),
      // home: OpenBtnSheetFilter(),
      // home: ArchiveLeads(),
      // home: LeadFollowingUpScreen(),
      // home: DetailAndEdit(),
      // home: LeadFollowingUpScreen(),
      // home: LeadProfileScreen(),
      // home: OnBoardingScreen(),
      home: SplashScreen(),
      // home: BackGroundImageHome(),
      // home: Background(),
      // home: SignInScreen(),
    );
    // );
  }
}

  // double sizeH = MediaQuery.of(context).size.height;
  //       double sizeV = MediaQuery.of(context).size.width;
