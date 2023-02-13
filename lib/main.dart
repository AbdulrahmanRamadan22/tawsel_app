import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'ui/views/password _change/password _change.dart';
import 'ui/views/slider_intro/slider_intro.dart';

void main() {
  runApp(const Tawsel());
}

class Tawsel extends StatelessWidget {
  const Tawsel({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.dark,
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
      home: SliderIntro(),
    );
  }
}



