import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/shared/custom_text.dart';
import 'package:gap/gap.dart';

class CardItem extends StatelessWidget {
   CardItem({super.key, required this.image, required this.text, required this.decs, required this.rate});
  final String image, text, decs, rate;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Image.asset(image, width: 150),
            Gap(10),
            CustomText(text: text, size: 15, weight: FontWeight.w500),
            Gap(5),
            CustomText(text: decs, size: 15, weight: FontWeight.w500),
            Gap(5),
            Row(
              mainAxisSize: MainAxisSize.min,

              children: [
                Icon(CupertinoIcons.star_fill, color: Colors.yellow),
                Gap(5),
              
                CustomText(text: rate, size: 15, weight: FontWeight.w500),
                Spacer(),
                Icon( CupertinoIcons.suit_heart_fill, color: Colors.red,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
