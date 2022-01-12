import 'package:flutter/material.dart';

class Location extends StatelessWidget {
  const Location({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: double.infinity,
      color: Colors.green,
      child: Row(
        children: const [
          Padding(
            padding: EdgeInsets.all(12.0),
            child: Icon(
              Icons.place,
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Text(
            'Adabor',
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}
