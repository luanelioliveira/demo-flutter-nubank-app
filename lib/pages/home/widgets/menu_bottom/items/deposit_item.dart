import 'package:flutter/material.dart';

import '../menu_bottom_item.dart';

class DepositItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MenuBottomItem(
      icon: Icons.move_to_inbox,
      text: 'Depositar',
    );
  }
}
