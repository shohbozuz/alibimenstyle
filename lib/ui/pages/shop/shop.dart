import 'package:flutter/material.dart';

class shop extends StatefulWidget {
  const shop({super.key});

  @override
  State<shop> createState() => _shopState();
}

class _shopState extends State<shop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Shop page loading ...',
          textScaleFactor: 2.0,
          style: TextStyle(color: Colors.black,fontSize: 10.0),
        ),
      ),
    );
  }
}
