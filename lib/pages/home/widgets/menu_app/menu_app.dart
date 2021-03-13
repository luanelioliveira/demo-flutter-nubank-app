import 'package:flutter/material.dart';
import 'package:nubank_app/pages/home/widgets/menu_app/menu_app_items.dart';

import 'account_info.dart';

class MenuApp extends StatelessWidget {
  final double top;
  final bool showMenu;

  const MenuApp({Key key, this.top, this.showMenu}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: 0,
      right: 0,
      child: AnimatedOpacity(
        duration: Duration(milliseconds: 100),
        opacity: showMenu ? 1 : 0,
        child: Container(
          height: MediaQuery.of(context).size.height * .65,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: <Widget>[
                AccountInfo(),
                MenuAppItems(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
