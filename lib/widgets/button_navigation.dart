import 'package:flutter/material.dart';
import 'package:tpapp/pages/account.dart';
import 'package:tpapp/pages/cart.dart';
import 'package:tpapp/pages/favorite.dart';
import 'package:tpapp/pages/homepage.dart';
import 'package:tpapp/pages/list_product_category.dart';

class ButtonNavigation extends StatefulWidget {
  const ButtonNavigation({super.key});

  @override
  State<ButtonNavigation> createState() => _ButtonNavigationState();
}

class _ButtonNavigationState extends State<ButtonNavigation> {
  int selectedIndex = 0;

  final List pages = [
    const MyHomePage(),
    const ListProductCategory(),
    const MyCart(),
    const Favorite(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.green,
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        onTap: (value) {
          setState(() {});

          selectedIndex = value;
        },
        elevation: 0,
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Shop"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Explore"),
          BottomNavigationBarItem(
              icon: Icon(Icons.card_travel_outlined), label: "Cart"),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border), label: "Favorite"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_2_rounded), label: "Account"),
        ],
      ),
      body: pages[selectedIndex],
    );
  }
}
