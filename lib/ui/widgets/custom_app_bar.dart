import 'package:flutter/material.dart';

Widget customAppBar({ double  fontSizeText=16.0,double sizeIcon=20.0,}){

  return Row(
    textDirection: TextDirection.rtl,
    children: [
      IconButton(
        icon:  Icon(
          Icons.arrow_forward_outlined,
          color: const Color(0xff191919),
          size: sizeIcon,
        ),

        onPressed: (){},

      ),
          Text(
          "تغيير الرقم السري",
        style: TextStyle(
          fontFamily: 'Cairo-Regular',
          fontWeight: FontWeight.w400,
          color: const Color(0xff191919),
          fontSize: fontSizeText,


        ),
      ),



    ],
  );

}