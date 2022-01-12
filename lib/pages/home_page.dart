import 'package:flutter/material.dart';
import 'package:shodai_mama/pages/first_page.dart';
import 'package:shodai_mama/pages/fresh_product.dart';
import 'package:shodai_mama/pages/pre_order.dart';
import 'package:shodai_mama/pages/regular_product.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  final List screens = [
    const FirstPage(),
    const FreshProduct(),
    RegularProduct(),
    const PreOrder(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: 'Fresh',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Regular',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Preorder',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.shopping_cart),
      ),
    );
  }
}
