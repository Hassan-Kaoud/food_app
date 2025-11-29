import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app/core/constants/app_colors.dart';
import 'package:food_app/features/home/widgets/card_item.dart';
import 'package:food_app/features/home/widgets/food_categroy.dart';
import 'package:food_app/features/home/widgets/search_item.dart';
import 'package:food_app/features/home/widgets/user_header.dart';
import 'package:food_app/shared/custom_text.dart';
import 'package:gap/gap.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<String> categories = ["All", "Combos", "Sliders", "Classics"];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        
        body: CustomScrollView(
          slivers: [
  

            SliverToBoxAdapter(
              child: 

        
          

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                children: [
                  Gap(75),
                  UserHeader(),
                  Gap(20),
                  SearchItem(),
           
                  Gap(20),
                  FoodCategroy(categories: categories, selectedIndex: selectedIndex),
                 ]),
            ),

            ),

            SliverPadding(padding: EdgeInsets.symmetric(horizontal: 20),
            sliver: SliverGrid(

              
              delegate: SliverChildBuilderDelegate(
                childCount: 6,
                (context, index) {
              return CardItem(image: "assets/items/burger.png", text: "Burger", decs: "Burger", rate: "5");
            },), gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 5, mainAxisSpacing: 5,childAspectRatio: 0.63),),
            )
            
          ]
        )
      ),
    );
  }
}


