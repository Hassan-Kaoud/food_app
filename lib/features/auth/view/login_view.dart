import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app/core/constants/app_colors.dart';
import 'package:food_app/features/auth/widgets/custom_button.dart';
import 'package:food_app/shared/custom_text.dart';
import 'package:food_app/shared/custom_text_field.dart';
import 'package:gap/gap.dart';

class LoginView extends StatelessWidget {
   LoginView({super.key});
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: AppColors.primaryColor,

        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Form(
            key: formkey,
            child: Column(
              children: [
                Gap(100),
                SvgPicture.asset("assets/logo/Hungry_.svg"),
                Gap(100),
                CustomText(
                  text: "welcome to my app",
                  color: Colors.white,
                  size: 13,
                  weight: FontWeight.w500,
                ),
                Gap(20),
                CustomTextField(hintText: "Email", obscureText: false, controler: emailcontroller,),
                Gap(30),
                CustomTextField(hintText: "Password", obscureText: true, controler: passwordcontroller,),
                Gap(30),
              CustomButton(text: "Login", onTap: (){
                if (formkey.currentState!.validate()) {
                  print("success login");
                  
                } 
              },),
                Gap(10),  
                
    
              
              ],
            ),
          ),
        ),
      ),
    );
  }
}
