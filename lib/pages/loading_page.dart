import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:jordans_store_ui/main.dart';
import 'package:jordans_store_ui/pages/home_page.dart';
import 'package:page_transition/page_transition.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
        SafeArea(
          child:
              Center(
                child: Column(mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(height: 200,
                      child: AnimatedSplashScreen(
                          splash: 'images/logo.png',
                          splashIconSize: 200,
                          nextScreen: MyApp(),
                          splashTransition: SplashTransition.rotationTransition,
                          pageTransitionType: PageTransitionType.bottomToTop,
                          animationDuration: Duration(seconds: 2),
                        duration: 3,
                        ),
                    ),
                  ],
                ),
              ),

          ),

    );
  }
}
