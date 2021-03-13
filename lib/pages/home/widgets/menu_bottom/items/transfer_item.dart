import 'package:flutter/material.dart';

import '../menu_bottom_item.dart';

class TransferItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MenuBottomItem(
      icon: Icons.mobile_screen_share,
      text: 'Transferir',
    );
  }
}
