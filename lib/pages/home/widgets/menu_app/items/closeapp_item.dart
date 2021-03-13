import 'package:flutter/material.dart';

class CloseAppItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(
          width: .7,
          color: Colors.white54,
        ),
      ),
      child: ElevatedButton(
        style: ButtonStyle(
          overlayColor: MaterialStateProperty.all<Color>(
            Colors.purple[900],
          ),
          backgroundColor: MaterialStateProperty.all<Color>(
            Colors.purple[800],
          ),
          elevation: MaterialStateProperty.all<double>(0.0),
          side: MaterialStateProperty.all<BorderSide>(
            BorderSide(style: BorderStyle.none),
          ),
        ),
        child: Text(
          'SAIR DO APP',
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
        onPressed: () {},
      ),
    );
  }
}
