import 'dart:async';
import 'package:flutter/material.dart';
import 'package:sajda_app/screens/spashing.dart';

import 'package:shared_preferences/shared_preferences.dart';
import '../app/constants/globals.dart';
import 'global_home.dart';
import 'package:flutter_svg/svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    Timer(const Duration(milliseconds: 500), () {
      navigateUser();
    });
  }

  void navigateUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var status = prefs.getBool('splaw');
    if (status == true) {
      // ignore: use_build_context_synchronously
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (BuildContext context) => const Home()),
      );
    } else {
      // ignore: use_build_context_synchronously
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (BuildContext context) => const Splashing()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.height * 0.5,
            child: Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: SvgPicture.asset(
                  'assets/svgs/bismillah.svg',
                  color:
                      Theme.of(context).brightness == Brightness.light
                          ? primary
                          : Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
