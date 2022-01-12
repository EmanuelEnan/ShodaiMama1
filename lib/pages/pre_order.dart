import 'package:flutter/material.dart';

class PreOrder extends StatelessWidget {
  const PreOrder({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Preorder'),),
      body: const Center(child: Text('PreOrder')),
    );
  }
}