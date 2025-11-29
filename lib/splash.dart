import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app/core/constants/app_colors.dart';
import 'package:gap/gap.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: AppColors.primaryColor,

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
         
          children: [
         Gap(200),
        SvgPicture.asset("assets/logo/Hungry_.svg"),
        Spacer(),
        Image.asset("assets/splash/splash.png")
         
          ],
        ),
      ),
    );
  }
}