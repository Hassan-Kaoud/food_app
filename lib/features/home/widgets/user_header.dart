import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app/core/constants/app_colors.dart';
import 'package:food_app/shared/custom_text.dart';
import 'package:gap/gap.dart';

class UserHeader extends StatelessWidget {
  const UserHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return   Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SvgPicture.asset(
                            "assets/logo/Hungry_.svg",
                            color: AppColors.primaryColor,
                            height: 35,
                          ),
                          Gap(10),
                          CustomText(
                            text: "Hello User",
                            color: Colors.grey.shade500,
                            size: 16,
                            weight: FontWeight.w500,
                          ),
                        ],
                      ),
                      Spacer(),
                      CircleAvatar(radius: 32,child: Icon(fill:1 , Icons.person,color: AppColors.primaryColor, size: 40),),
                    ],
                  );
  }
}