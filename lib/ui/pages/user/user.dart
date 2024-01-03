import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(
              bottom: 52.0,
            ),
            child: Column(
              children: [
                AvatarWidget(),
                SizedBox(height: 8),
                TitleWidget(),
                SizedBox(height: 15),
                Platinum(),
                SizedBox(height: 30),
                user()
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AvatarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 103,
      height: 103,
      decoration: BoxDecoration(
        color: Color(0xFFEFEDFC),
        borderRadius: BorderRadius.circular(1000),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            bottom: 0,
            child: Image.asset('assets/img_11.png',
                width: 382, height: 172, fit: BoxFit.cover),
          ),
          // User Icon
        ],
      ),
    );
  }
}

class TitleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327,
      height: 75,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/img_12.png'),
        ],
      ),
    );
  }
}

class Platinum extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/img_13.png',
          width: 362,
          height: 172,
        ),
      ],
    );
  }
}

class user extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onDoubleTap: () {},
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: 20.0,
                  ),
                  Image.asset(
                    'assets/img_14.png',
                    width: 40,
                    height: 40,
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Text(
                    'My Account',
                    style: TextStyle(
                      color: Color(0xFF14181E),
                    ),
                  ),
                  SizedBox(
                    width: 190.0,
                  ),
                  Image.asset(
                    'assets/img_15.png',
                    width: 24,
                    height: 24,
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20.0,
                  ),
                  Image.asset(
                    'assets/img_16.png',
                    width: 40,
                    height: 40,
                  ),
                  SizedBox(
                    width: 15.0,
                  ),
                  Text(
                    'Address',
                    style: TextStyle(
                      color: Color(0xFF14181E),
                    ),
                  ),
                  SizedBox(
                    width: 214.0,
                  ),
                  Image.asset(
                    'assets/img_15.png',
                    width: 24,
                    height: 24,
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20.0,
                  ),
                  Image.asset(
                    'assets/img_17.png',
                    width: 40,
                    height: 40,
                  ),
                  SizedBox(
                    width: 16.0,
                  ),
                  Text(
                    'Order History',
                    style: TextStyle(
                      color: Color(0xFF14181E),
                    ),
                  ),
                  SizedBox(
                    width: 180.0,
                  ),
                  Image.asset(
                    'assets/img_15.png',
                    width: 24,
                    height: 24,
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20.0,
                  ),
                  Image.asset(
                    'assets/img_18.png',
                    width: 40,
                    height: 40,
                  ),
                  SizedBox(
                    width: 16.0,
                  ),
                  Text(
                    'Help Center',
                    style: TextStyle(
                      color: Color(0xFF14181E),
                    ),
                  ),
                  SizedBox(
                    width: 189.0,
                  ),
                  Image.asset(
                    'assets/img_15.png',
                    width: 24,
                    height: 24,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
