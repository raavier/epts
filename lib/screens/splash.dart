import 'dart:async';

import 'package:epts/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget build(BuildContext context) {
  return MaterialApp(
    title: 'Welcome to Flutter',
    home: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/background_splash.png"),
              fit: BoxFit.cover)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Text('My App'),
          centerTitle: true,
          leading: IconButton(
              icon: Icon(
                Icons.list,
                color: Colors.white,
              ),
              onPressed: () {}),
        ),
      ),
    ),
  );
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  static MaterialPageRoute get route => MaterialPageRoute(
        builder: (context) => const SplashScreen(),
      );

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  Animation animation;
  AnimationController animationController;

  @override
  void initState() {
    super.initState();
    animationController = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
    );

    animation = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
        parent: animationController, curve: Curves.fastOutSlowIn));
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    _navigateToAuthScreen(context);

    return MaterialApp(
      title: 'Teste Splash',
      home: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/background_splash.png"),
              fit: BoxFit.cover),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: FadeTransition(
              opacity:
                  animationController.drive(CurveTween(curve: Curves.easeOut)),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    /* Image(
                    height: 75,
                    image: AssetImage('assets/icon/launcher_icon.png'),
                  ),
                  SizedBox(
                    width: 20,
                  ), */
                    Text(
                      'éPTS?',
                      style: TextStyle(
                          fontFamily: 'MPLUS',
                          fontSize: 75,
                          color: Colors.white),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _navigateToAuthScreen(BuildContext context) {
    Timer(const Duration(seconds: 2),
        () => Navigator.of(context).pushReplacement(Home.route));
    print('object');
  }
}
