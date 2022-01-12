import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

import 'package:shodai_mama/pages/test_page.dart';

import '../models/navigation_drawer.dart';

class FreshProduct extends StatefulWidget {
  const FreshProduct({Key? key}) : super(key: key);

  @override
  State<FreshProduct> createState() => _FreshProductState();
}

class _FreshProductState extends State<FreshProduct> {
  @override
  Widget build(BuildContext context) {
    // final cart = Provider.of<ItemProvider>(context);
    return Scaffold(
      drawer: const NavigationDrawerWidget(),
      appBar: AppBar(
        title: const Text('Fresh Products'),
        actions: [
          Row(children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
          ]),
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: Badge(
              // created local database and all the steps
              // to made the cart interactive but couldn't
              // build it with the FutureBuilder method as the page
              // loads constantly.

              // badgeContent: Consumer<ItemProvider>(
              //   builder: (_, value, child) {
              //     return Text(
              //       value.getCounter().toString(),
              //       style: const TextStyle(color: Colors.white),
              //     );
              //   },
              // ),
              badgeContent: const Text(
                '0',
                style: TextStyle(color: Colors.white),
              ),

              animationDuration: const Duration(milliseconds: 300),
              child: const Icon(Icons.shopping_cart),
            ),
          ),
        ],
      ),
      body: TestPage(),
    );
  }
}
