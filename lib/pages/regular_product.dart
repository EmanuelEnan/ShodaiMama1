import 'package:flutter/material.dart';

class RegularProduct extends StatelessWidget {
  const RegularProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Regular Product'),
      ),
      body: const Center(child: Text('regular')),
    );
  }
}
