import 'package:flutter/material.dart';
import 'package:food_app/core/constants/app_colors.dart';
import 'package:food_app/shared/custom_text.dart';

class CustomButton extends StatelessWidget {
   CustomButton({super.key, this.onTap, required this.text});
  final Function()? onTap;
final String text;
  @override
  Widget build(BuildContext context) {

    return    GestureDetector(
                 onTap: onTap,
                 
                 child: Container(
                  width: double.infinity,
                  height: 50,
                             decoration: BoxDecoration(
                               color: Colors.white,
                               borderRadius: BorderRadius.circular(10),
                               ),
                             
                  child: Center(child: CustomText(text: text, color: AppColors.primaryColor, size: 15, weight: FontWeight.w500,)),
                 ),
               );
  }
}