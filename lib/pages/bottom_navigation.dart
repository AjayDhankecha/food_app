import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/pages/profile_page.dart';
import 'package:food_delivery_app/pages/wallet_page.dart';

import 'home_page.dart';
import 'order_page.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int currentIndex = 0;
  late List<Widget> pages;
  late Widget currentPage;
  late HomePage homePage;
  late WalletPage walletPage;
  late OrderPage orderPage;
  late ProfilePage profilePage;

  @override
  void initState() {
    homePage=HomePage();
    walletPage=WalletPage();
    orderPage=OrderPage();
    profilePage=ProfilePage();
    pages=[homePage,walletPage,orderPage,profilePage];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
          height: 50,
          backgroundColor: Colors.white,
          color: Colors.black,
          animationDuration: Duration(milliseconds: 500),
          onTap: (int index){
            setState(() {
              currentIndex=index;
            });
          },
          items: [
            Icon(Icons.home_outlined,color: Colors.white,),
            Icon(Icons.shopping_bag_outlined,color: Colors.white,),
            Icon(Icons.wallet_outlined,color: Colors.white,),
            Icon(Icons.person_2_outlined,color: Colors.white,),
          ]),
      body: pages[currentIndex],
    );
  }
}


