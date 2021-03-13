import 'package:flutter/material.dart';

import '../menu_bottom_item.dart';

class LimitItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MenuBottomItem(
      icon: Icons.format_align_center,
      text: 'Ajustar limite',
    );
  }
}
