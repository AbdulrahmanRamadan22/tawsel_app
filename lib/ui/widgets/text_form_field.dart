import 'package:flutter/material.dart';



Widget defaultFormField(
    {
       TextEditingController? controller,
      required TextInputType? type,
      required String hintText,
      required String titleTextFormField,
      required IconData?  prefixIcon,
      IconData?  suffixIcon,
      Function()?  suffixPressed,
      Function()? prefixPressed,
      Function(String)? onFieldSubmitted,
     double?  height ,

      bool isPassword=true,


    }
    )=>Column(
     textDirection: TextDirection.rtl,
     crossAxisAlignment: CrossAxisAlignment.start,
     children: [

     Text(
            titleTextFormField,
          style: const TextStyle(
            fontFamily: "Cairo",
            fontWeight: FontWeight.w400,
            fontSize:14.0,
          ),

        ),
       SizedBox(height:height,),

        TextFormField(

         textDirection: TextDirection.rtl,

         keyboardType:type,
         controller:controller,
         obscureText:isPassword,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            fontFamily: "Cairo",
          ),

        onFieldSubmitted:onFieldSubmitted,

        decoration:  InputDecoration(
          hintTextDirection: TextDirection.rtl,
        border: OutlineInputBorder( borderRadius:BorderRadius.circular(5)),
          isDense: true,                      // Added this
          contentPadding: const EdgeInsets.all(10),


        hintText:hintText ,

        hintStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          fontFamily: "Cairo",
        ),
        // hintTextDirection:TextDirection.rtl,
        prefixIcon: IconButton(
          icon: Icon(
            prefixIcon,
          ),
          onPressed: prefixPressed,
        ),


  ),
),
      ],
    );