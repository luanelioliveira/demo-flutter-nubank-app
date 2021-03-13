import 'package:flutter/material.dart';

class MenuAppItem extends StatelessWidget {
  final IconData icon;
  final String text;

  const MenuAppItem({Key key, this.icon, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(width: .7, color: Colors.white54),
          top: BorderSide(width: .7, color: Colors.white54),
        ),
      ),
      child: ElevatedButton(
        style: ButtonStyle(
          overlayColor: MaterialStateProperty.all<Color>(Colors.purple[900]),
          backgroundColor: MaterialStateProperty.all<Color>(Colors.purple[800]),
          elevation: MaterialStateProperty.all<double>(0.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Icon(icon),
                SizedBox(
                  width: 10,
                ),
                Text(
                  text,
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
            Icon(
              Icons.chevron_right,
              size: 16,
            ),
          ],
        ),
        onPressed: () {},
      ),
    );
  }
}
