import 'package:flutter/material.dart';

class delete extends StatefulWidget {
  const delete({super.key});

  @override
  State<delete> createState() => _deleteState();
}

class _deleteState extends State<delete> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Korzinka page loading ...',
          textScaleFactor: 2.0,
          style: TextStyle(color: Colors.black,fontSize: 10.0),
        ),
      ),
    );
  }
}
