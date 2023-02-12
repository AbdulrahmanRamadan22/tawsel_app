import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {

    super.initState();


    Future.delayed(const Duration(seconds: 3),(){

      Navigator.pushReplacementNamed(context, "SliderIntro");
    }

    );
  }

  @override
  Widget build(BuildContext context) {


    var width=MediaQuery.of(context).size.width;

    return  Scaffold(
      backgroundColor: const Color(0xffF1F4F3),
      body: SafeArea(
        child: Center(
            child: Image(
              image: const AssetImage("assets/icons/splash.png"),
              width: width / 2,
            ),
          ),
      ),


    );
  }
}
