import 'package:flutter/material.dart';
import 'package:food_app/core/constants/app_colors.dart';
import 'package:food_app/shared/custom_text.dart';

class FoodCategroy extends StatefulWidget {
   FoodCategroy({super.key, required this.categories, required this.selectedIndex});
  final   List<String> categories ;
   final int selectedIndex;

  @override
  State<FoodCategroy> createState() => _FoodCategroyState();
}

class _FoodCategroyState extends State<FoodCategroy> {
  @override
  late int selectedIndex;

  initState() {
 
    selectedIndex = widget.selectedIndex;
       super.initState();
  }




    
  
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                        widget.categories.length,
                        (index) => GestureDetector(
                          onTap: () {
                            setState(() {
                              
                          selectedIndex = index;
                            });
                          },
              
                          child: Container(
                            margin: EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                              color:selectedIndex == index
                                  ? AppColors.primaryColor
                                  : Colors.grey.shade200,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 30,
                              vertical: 15,
                            ),
                            child: CustomText(
                              text: widget.categories[index],
                              size: 15,
                              weight: FontWeight.w500,
                              color: selectedIndex == index
                                  ? Colors.white
                                  : Colors.grey.shade500,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
               ;
  }
}