import 'package:flutter/material.dart';

import '../menu_app_item.dart';

class HelpMeItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MenuAppItem(
      icon: Icons.info_outline,
      text: 'Me ajuda',
    );
  }
}
