import 'package:flutter/material.dart';

import 'home_item.dart';

class Products extends StatelessWidget {
  final HomeItem? homeitem;

  const Products({Key? key, this.homeitem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      delegate: SliverChildListDelegate([
        Card(
          color: Colors.white,
          elevation: 1,

          // child: Hero(
          //   tag: '${homeitem?.id ?? 0}',
          //   child: Image.asset(homeitem?.image ?? 'error', fit: BoxFit.cover,),),

          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Image.asset(
                  'assets/img2.jpg',
                  height: 85,
                  width: 85,
                ),
              ),
              const Text(
                'product 1',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text('150tk'),
              const Text('1 kg'),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                ),
                onPressed: () {},
                child: const Center(
                  child: Text('Add To Cart'),
                ),
              ),
            ],
          ),
        ),
        Card(
          color: Colors.white,
          elevation: 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Image.asset(
                  'assets/img3.jpg',
                  height: 85,
                  width: 85,
                ),
              ),
              const Text(
                'product 2',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text('200tk'),
              const Text('4 pc'),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                ),
                onPressed: () {},
                child: const Center(
                  child: Text('Add To Cart'),
                ),
              ),
            ],
          ),
        ),
        Card(
          color: Colors.white,
          elevation: 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Image.asset(
                  'assets/img1.jpg',
                  height: 85,
                  width: 85,
                ),
              ),
              const Text(
                'product 3',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text('100tk'),
              const Text('1 pc'),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                ),
                onPressed: () {},
                child: const Center(
                  child: Text('Add To Cart'),
                ),
              ),
            ],
          ),
        ),
        Card(
          color: Colors.white,
          elevation: 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Image.asset(
                  'assets/img1.jpg',
                  height: 85,
                  width: 85,
                ),
              ),
              const Text(
                'product 4',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text('100tk'),
              const Text('1 pc'),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                ),
                onPressed: () {},
                child: const Center(
                  child: Text('Add To Cart'),
                ),
              ),
            ],
          ),
        ),
      ]),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, crossAxisSpacing: 5, mainAxisSpacing: 5),
    );
  }
}
