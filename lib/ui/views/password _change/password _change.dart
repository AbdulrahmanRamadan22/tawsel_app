import 'package:flutter/material.dart';

import '../../widgets/custom_app_bar.dart';
import '../../widgets/default_button.dart';
import '../../widgets/text_form_field.dart';

class PasswordChange extends StatelessWidget {
  const PasswordChange({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width=MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xffF1F4F3),

     body: Column(
       children: [
         SizedBox(height: width / 8,),
         customAppBar(
         ),
         SizedBox(height: width / 20,),
         Expanded(
           child: Container(
             decoration: BoxDecoration(
               color: Colors.white,
               borderRadius: BorderRadius.circular(20),
             ),

              width: double.infinity,
             child: Padding(
               padding: EdgeInsets.all(width / 20),
               child: SingleChildScrollView(
                 child: Column(
                   textDirection: TextDirection.rtl,
                   children: [
                     defaultFormField(
                       hintText: "الرقم السري القديم",
                       height: width / 50,
                       type: TextInputType.visiblePassword,
                       titleTextFormField: "الرقم السري القديم",
                       prefixIcon: Icons.visibility,

                     ),
                     SizedBox(height: width / 40,),
                     defaultFormField(
                       hintText: "الرقم السري الجديد",
                       height: width / 50,
                       type: TextInputType.visiblePassword,
                       titleTextFormField: "الرقم السري الجديد",
                       prefixIcon: Icons.visibility,

                     ),
                     SizedBox(height: width / 40,),
                     defaultFormField(
                       hintText: "تأكيد الرقم السري الجديد",
                       height: width / 50,
                       type: TextInputType.visiblePassword,
                       titleTextFormField: "تأكيد الرقم السري الجديد",
                       prefixIcon: Icons.visibility,
                     ),
                     SizedBox(height: width / 20,),
                     defaultButton(
                       text: 'حفظ التغييرات',
                       onPressed: (){},
                       backGround: Color(0xff15C975),
                       radius: 5,


                     ),



                   ],
                 ),
               ),
             ),

           ),
         ),


       ],

     ),
    );
  }
}
