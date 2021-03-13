import 'package:flutter/material.dart';

import '../menu_bottom_item.dart';

class ReferItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MenuBottomItem(
      icon: Icons.person_add,
      text: 'Indicar Amigos',
    );
  }
}
