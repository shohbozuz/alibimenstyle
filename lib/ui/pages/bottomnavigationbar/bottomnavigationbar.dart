import 'package:alibimenstyle/ui/pages/delete/delete.dart';
import 'package:alibimenstyle/ui/pages/home/home.dart';
import 'package:alibimenstyle/ui/pages/like/like.dart';
import 'package:alibimenstyle/ui/pages/shop/shop.dart';
import 'package:alibimenstyle/ui/pages/user/user.dart';
import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _page = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  Widget _getPage(int page) {
    switch (page) {
      case 0:
        return SliderScreen();
      case 1:
        return shop();
      case 2:
        return delete();
      case 3:
        return Like();
      case 4:
        return ProfileWidget();
      default:
        return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 0,
        height: 60.0,
        items: <Widget>[
          Image.asset('assets/bottom/home.png',
              height: 30, width: 30, color: Colors.white),
          Image.asset('assets/bottom/shop.png',
              height: 30, width: 30, color: Colors.white),
          Image.asset('assets/bottom/img.png',
              height: 30, width: 30, color: Colors.white),
          Image.asset('assets/bottom/like.png',
              height: 30, width: 30, color: Colors.white),
          Image.asset('assets/bottom/user.png',
              height: 30, width: 30, color: Colors.white),
        ],
        color: Color(0xFF14181E),
        buttonBackgroundColor: Color(0xFF614FE0),
        backgroundColor: Colors.white,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
        letIndexChange: (index) => true,
      ),
      body: Container(
        // color: Colors.blueAccent,
        child: Center(
          child: _getPage(_page),
        ),
      ),
    );
  }
}
