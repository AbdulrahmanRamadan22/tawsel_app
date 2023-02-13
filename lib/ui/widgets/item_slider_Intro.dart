import 'package:flutter/material.dart';

import 'default_button.dart';

Widget itemSliderIntro({final list, final width})=>Container(

  decoration: const BoxDecoration(
      image: DecorationImage(
          image: AssetImage('assets/images/background.png'),
          fit: BoxFit.cover

      )
  ),
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      CircleAvatar(
        radius: 60.5,
        backgroundColor: const Color(0xff757575),

        child: CircleAvatar(
          radius: 60,
          backgroundColor: Colors.white,

          child: Image.asset(

            fit: BoxFit.cover,
            "${list['image']}",width:60,),

        ),
      ),
      SizedBox(height: width / 20),
      Text(
        '${list['textTitle']}',
        style: const TextStyle(
          fontSize: 18,
          fontFamily: 'Cairo',
          color: Colors.white,
          fontWeight: FontWeight.w400,
        ),

      ),
      SizedBox(height: width / 40),
      Text(
        '${list['textSubTitle']}',
        style: const TextStyle(
          fontSize: 14,
          fontFamily: 'Cairo-Regular',
          color: Colors.white,
          fontWeight: FontWeight.w400,

        ),

      ),
      Padding(
        padding:  EdgeInsets.symmetric(horizontal: width /24,vertical: width/20 ),
        child: defaultButton(
          onPressed: (){},
          text: 'تسجيل الدخول',
          radius: 8,
          fontSize: 16,

        ),
      ),

      Padding(
        padding:  EdgeInsets.symmetric(horizontal: width /24,),

        child: defaultButton(
            onPressed: (){},
            text: 'تسجيل جديد',
            radius: 8,
            colorTextButton: Colors.black,
            backGround: Colors.white
        ),
      ),


    ],
  ),


);
