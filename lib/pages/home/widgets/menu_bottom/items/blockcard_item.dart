import 'package:flutter/material.dart';

import '../menu_bottom_item.dart';

class BlockCardItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MenuBottomItem(
      icon: Icons.lock_open,
      text: 'Bloquear cartão',
    );
  }
}
