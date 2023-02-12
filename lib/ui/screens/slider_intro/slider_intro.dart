



import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../widgets/components.dart';

// ignore: must_be_immutable
class SliderIntro extends StatelessWidget {
SliderIntro({Key? key}) : super(key: key);


   List<Map<String, String>> listIntro=[
    {
      "image":"assets/icons/intro1.png",
      "textTitle":"إستلام الطلب",
      "textSubTitle":"هيتم استلام طلبك من خلال أحد السائقين اللي هتختارهم",
    },
    {
      "image":"assets/icons/intro2.png",
      "textTitle":"تسليم الأرباح",
      "textSubTitle":"هتاخد تكاليف الطلب وانت في مكانك وسيب الباقي علينا",
    },

    {
      "image":"assets/icons/intro3.png",
      "textTitle":"التوصيل والتسليم",
      "textSubTitle":"بعد استلام أرباحك هيقوم أحد السائقين بتوصيل طلبك للعميل",
    },

  ];

  @override
  Widget build(BuildContext context) {
   var width=MediaQuery.of(context).size.width;

    return Scaffold(


      body: Column(
        children: [

          Expanded(
              child: PageView.builder(
                  itemBuilder:(context, index) => itemSliderIntro(list: listIntro[index],width:width ),
                  itemCount: listIntro.length,
              ),
          ),

        ],
      ),

    );
  }
}


Widget itemSliderIntro({final list, final width})

{

  return Container(

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
          radius: width / 6,
            backgroundColor: Colors.white,
            child: Image.asset(
              fit: BoxFit.cover,
              "${list['image']}",width: width / 6,),
        ),
        SizedBox(height: width / 20),
        Text(
            '${list['textTitle']}',
          style: TextStyle(
            fontSize: width/18,
            fontFamily: 'Cairo',
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),

        ),
        SizedBox(height: width / 40),
        Text(
          '${list['textSubTitle']}',
          style: TextStyle(
            fontSize: width/27,
            fontFamily: 'Cairo-Regular',
            color: Colors.white,
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

}
