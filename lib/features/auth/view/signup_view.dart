import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app/core/constants/app_colors.dart';
import 'package:food_app/features/auth/widgets/custom_button.dart';
import 'package:food_app/shared/custom_text.dart';
import 'package:food_app/shared/custom_text_field.dart';
import 'package:gap/gap.dart';

class SignupView extends StatelessWidget {
   SignupView({super.key});
TextEditingController emailcontroller = TextEditingController();
TextEditingController passwordcontroller = TextEditingController();
TextEditingController confirmpasswordcontroller = TextEditingController();
TextEditingController namecontroller = TextEditingController();
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: AppColors.primaryColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric( horizontal: 20.0),
          child: Form(
            key: formkey,
            child: Column(
              children: [
            
             Gap(100),
                      SvgPicture.asset("assets/logo/Hungry_.svg"),
                      Gap(10),
                      CustomTextField(hintText: "Name", obscureText: false, controler: namecontroller,),
                      Gap(10),
                      CustomTextField(hintText: "Email", obscureText: false, controler: emailcontroller,),
                      Gap(10),
                      CustomTextField(hintText: "Password", obscureText: true, controler: passwordcontroller,),
                      Gap(10),
                      CustomTextField(hintText: "Confirm Password", obscureText: true, controler: confirmpasswordcontroller,),
                      Gap(10),
                      CustomButton(text: "Sign Up", onTap: (){if (formkey.currentState!.validate()) {
                      print("success register");
                      
                    } },),
            
                     
                      
            
              ],),
          ),
        ),
      ),
    );
  }
}