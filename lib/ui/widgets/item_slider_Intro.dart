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
        radius: width / 5.9,
        backgroundColor: const Color(0xff757575),

        child: CircleAvatar(
          radius: width / 6,
          backgroundColor: Colors.white,

          child: Image.asset(

            fit: BoxFit.cover,
            "${list['image']}",width: width / 6,),

        ),
      ),
      SizedBox(height: width / 20),
      Text(
        '${list['textTitle']}',
        style: TextStyle(
          fontSize: width/18,
          fontFamily: 'Cairo',
          color: Colors.white,
          fontWeight: FontWeight.w400,
        ),

      ),
      SizedBox(height: width / 40),
      Text(
        '${list['textSubTitle']}',
        style: TextStyle(
          fontSize: width/27,
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
          radius: width/48,
          fontSize: width/24,
          height: width/7.5,
        ),
      ),

      Padding(
        padding:  EdgeInsets.symmetric(horizontal: width /24,),

        child: defaultButton(
            onPressed: (){},
            text: 'تسجيل جديد',
            radius: width/48,
            fontSize: width/24,
            height: width/7.5,
            colorTextButton: Colors.black,
            backGround: Colors.white
        ),
      ),


    ],
  ),


);
