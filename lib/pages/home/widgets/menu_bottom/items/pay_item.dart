import 'package:flutter/material.dart';

import '../menu_bottom_item.dart';

class PayItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MenuBottomItem(
      icon: Icons.chrome_reader_mode,
      text: 'Pagar',
    );
  }
}
