import 'package:flutter/material.dart';

Widget defaultButton(
    {
      double width=double.infinity,
      Color backGround= const  Color(0xffFF6600),
      Color colorTextButton= Colors.white,
      double height=50,
      required String?  text,
      double radius=0.0,
      bool isUppercase=true,
      required Function()  onPressed,
      double  fontSize=16.0,

    }
    )=> Container(
  decoration:BoxDecoration(
    color:backGround,
    borderRadius: BorderRadius.circular(radius),
  ) ,
  width:width,
  height: height,
  child: MaterialButton(
    onPressed: onPressed,
    child: Text(
      text!,
      style:  TextStyle(color: colorTextButton,
          fontWeight: FontWeight.w400,
          fontFamily: 'Cairo',
          fontSize:fontSize ),
    ),
  ),
);