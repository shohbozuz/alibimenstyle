import 'package:flutter/material.dart';

class Like extends StatefulWidget {
  const Like({super.key});

  @override
  State<Like> createState() => _LikeState();
}

class _LikeState extends State<Like> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Likes page loading ...',
          textScaleFactor: 2.0,
          style: TextStyle(color: Colors.black,fontSize: 10.0),
        ),
      ),
    );
  }

}




