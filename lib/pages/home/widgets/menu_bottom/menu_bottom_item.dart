import 'package:flutter/material.dart';

class MenuBottomItem extends StatelessWidget {
  final IconData icon;
  final String text;

  const MenuBottomItem({Key key, this.icon, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 12),
      child: Container(
        width: _screenWidth * 0.23,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          color: Colors.white24,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Icon(
                icon,
                color: Colors.white,
                size: 35,
              ),
              Text(
                text,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
