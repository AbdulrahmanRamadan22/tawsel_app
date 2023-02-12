import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'ui/screens/slider_intro/slider_intro.dart';
import 'ui/screens/splash/splash.dart';

void main() {
  runApp(const Tawsel());
}

class Tawsel extends StatelessWidget {
  const Tawsel({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.light,
      statusBarColor: Colors.transparent,

    ));


    return MaterialApp(

      routes: {
        "SliderIntro":(context) => SliderIntro(),

      },

      debugShowCheckedModeBanner: false,
      title: 'Tawsel',
      theme: ThemeData(
        primaryColor: const Color(0xffFF6600),

    ),
      home:const SplashScreen()
    );
  }
}



