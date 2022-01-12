import 'package:badges/badges.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../models/location.dart';
import '../models/navigation_drawer.dart';
import '../models/offers.dart';
import '../models/products.dart';
import 'products_screen.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  int runningIndex = 0;

  final urlImages = [
    'assets/img1.jpg',
    'assets/img2.jpg',
    'assets/img3.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawerWidget(),
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Home'),
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
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Column(
                  children: [
                    Stack(
                      children: [
                        CarouselSlider.builder(
                          itemCount: urlImages.length,
                          options: CarouselOptions(
                            aspectRatio: 12 / 9,
                            viewportFraction: 1,

                            reverse: true,
                            onPageChanged: (index, reason) {
                              setState(() => runningIndex = index);
                            },
                            // autoPlay: true,
                          ),
                          itemBuilder: (context, index, realIndex) {
                            final urlImg = urlImages[index];

                            return buildImg(urlImg, index);
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 260),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: Center(
                              child: buildIndicator(),
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              const Location(),
            ]),
          ),

          SliverList(
            delegate: SliverChildListDelegate(
              [
                const Offers(),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                const ProductsScreen(),
              ],
            ),
          ),
          Products(),
          //
        ],
      ),
    );
  }

  buildIndicator() {
    return AnimatedSmoothIndicator(
      activeIndex: runningIndex,
      count: urlImages.length,
      effect: const SlideEffect(
        dotColor: Colors.white,
        radius: 5,
      ),
    );
  }
}

Widget buildImg(String urlImg, int index) {
  return Container(
    // margin: const EdgeInsets.symmetric(horizontal: 5),
    child: Image.asset(
      urlImg,
      fit: BoxFit.cover,
    ),
  );
}
