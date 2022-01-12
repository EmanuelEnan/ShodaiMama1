import 'package:flutter/material.dart';

class Offers extends StatelessWidget {
  const Offers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(12.0),
          child: Text(
            'ShodaiMama Offers',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              
            ),
          ),
        ),
        const SizedBox(
          height: 6,
        ),
        Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            color: Colors.white24,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/img4.jpg',
                height: 150,
                width: 150,
              ),
              TextButton(
                onPressed: () {},
                child: Row(
                  children: const [
                    Text(
                      'ShodaiMama barbecue Fest',
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.green,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.arrow_forward_ios,
                    size: 12,
                    color: Colors.green,),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
