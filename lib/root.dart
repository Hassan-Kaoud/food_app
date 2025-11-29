import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/core/constants/app_colors.dart';
import 'package:food_app/features/auth/view/profile_view.dart';
import 'package:food_app/features/cart/views/cart_view.dart';
import 'package:food_app/features/home/views/home_view.dart';
import 'package:food_app/features/orderhistory/views/order_history_view.dart';

class Root extends StatefulWidget {
   Root({super.key});

  @override
  State<Root> createState() => _RootState();

}

class _RootState extends State<Root> {
  late PageController pageController ;
    late  List<Widget> screens;
    int currentIndex = 0;
  
  void initState() {
     screens = 
  [
    HomeView(),
    CartView(),
    OrderHistoryView(),
    ProfileView()
  ];
    pageController = PageController(initialPage: currentIndex);
    super.initState();
 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        physics: NeverScrollableScrollPhysics(),

        controller: pageController,
        children: screens
        ,
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(10) ,
decoration: BoxDecoration(
  color: AppColors.primaryColor,
  borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
 
),
        child: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              currentIndex = index;
              pageController.jumpToPage(index);
            });
          },

          elevation: 0,
          backgroundColor: Colors.transparent,
          type: BottomNavigationBarType.fixed ,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey.shade700,
          currentIndex: currentIndex,
          items: [
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.shopping_cart), label: "Cart"),
            BottomNavigationBarItem(icon: Icon(Icons.local_restaurant_sharp), label: "Order History"),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.person), label: "Profile"),
          ],
        ),
      )
    );
  }
}