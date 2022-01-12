import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavigationDrawerWidget extends StatelessWidget {
  const NavigationDrawerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Container(
          color: Colors.white,
          child: ListView(
            children: [
              const SizedBox(
                height: 14,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text(
                    'Shodai Mama',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.red,
                    ),
                  ),
                  OutlinedButton(
                    onPressed: () {},
                    child: const Text('Login'),
                  ),
                  const Icon(Icons.info),
                ],
              ),
              const SizedBox(
                height: 14,
              ),
              menuItem(
                text: 'Hygiene',
                icon: FontAwesomeIcons.egg,
              ),
              menuItem(
                text: 'Breakfast & Snacks',
                icon: FontAwesomeIcons.redditSquare,
              ),
              menuItem(
                text: 'Cooking',
                icon: FontAwesomeIcons.feather,
              ),
              menuItem(
                text: 'Meat & Fish',
                icon: FontAwesomeIcons.gamepad,
              ),
              menuItem(
                text: 'Fruit & Vegetables',
                icon: FontAwesomeIcons.hamburger,
              ),
              menuItem(
                text: 'Breakfast & Snacks',
                icon: FontAwesomeIcons.redditSquare,
              ),
              menuItem(
                text: 'Cooking',
                icon: FontAwesomeIcons.feather,
              ),
              menuItem(
                text: 'Meat & Fish',
                icon: FontAwesomeIcons.gamepad,
              ),
              menuItem(
                text: 'Fruit & Vegetables',
                icon: FontAwesomeIcons.hamburger,
              ),
              menuItem(
                text: 'Meat & Fish',
                icon: FontAwesomeIcons.gamepad,
              ),
              menuItem(
                text: 'Fruit & Vegetables',
                icon: FontAwesomeIcons.hamburger,
              ),
              const SizedBox(
                height: 25,
              ),
              Stack(
                children: [
                  Container(
                    height: 80,
                    width: double.infinity,
                    color: Colors.orange,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      
                      children: [
                        GestureDetector(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.call,
                                color: Colors.white,
                                size: 22,
                              ),
                              Text(
                                'Call us',
                                style: TextStyle(color: Colors.white, fontSize: 18),
                              ),
                            ],
                          ),
                        ),
                        GestureDetector(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.question_answer,color: Colors.white,
                                size: 22,),
                              Text('FAQ', style: TextStyle(color: Colors.white, fontSize: 18),),
                            ],
                          ),
                        ),
                        GestureDetector(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.chat, color: Colors.white,
                                size: 22,),
                              Text('Chat Now', style: TextStyle(color: Colors.white, fontSize: 18),),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  menuItem({String? text, icon}) {
    return ListTile(
      leading: Icon(
        icon,
        color: Colors.orange,
      ),
      title: Text(text!),
      onTap: () {},
    );
  }
}
