



import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../widgets/item_slider_Intro.dart';

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


