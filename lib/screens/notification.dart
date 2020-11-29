import 'package:flutter/material.dart';

class Noti extends StatefulWidget {
  @override
  _Noti createState() => _Noti();
}

class _Noti extends State<Noti> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text(
          'Notification',
          style: TextStyle(color: Colors.black, fontSize: 22),
        ),
      ),
    );
  }
}
