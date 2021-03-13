import 'package:flutter/material.dart';

import '../menu_bottom_item.dart';

class LoadItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MenuBottomItem(
      icon: Icons.monetization_on,
      text: 'Empréstimos',
    );
  }
}
