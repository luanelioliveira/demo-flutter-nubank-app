import 'package:flutter/material.dart';

class MyCardApp extends StatelessWidget {
  final Widget child;

  const MyCardApp({Key key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          child: child,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
