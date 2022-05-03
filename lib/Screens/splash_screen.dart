import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assignment/Screens/dashboardScreen.dart';
import 'package:flutter_assignment/Screens/login_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../constraints/styles.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  String? finalEmail;
  Future getValidationData() async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    var obtainedEmail = sharedPreferences.getString("email");
    setState(() {
      finalEmail = obtainedEmail;
    });
    // ignore: avoid_print
    print("Email=$finalEmail");
  }

  @override
  void initState() {
    getValidationData().whenComplete(() => Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                finalEmail != null ? const DashBoard() : const LoginScreen())));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
    );
  }

  Widget getBody() {
    return AnimatedSplashScreen(
        duration: 2000,
        animationDuration: const Duration(milliseconds: 1500),
        splash: CupertinoIcons.cube_box,
        nextScreen: const LoginScreen(),
        splashTransition: SplashTransition.fadeTransition,
        backgroundColor: ThemeStyles.blueColor);
  }
}
