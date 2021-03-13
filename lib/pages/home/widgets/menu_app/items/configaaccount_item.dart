import 'package:flutter/material.dart';

import '../menu_app_item.dart';

class ConfigAccountItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MenuAppItem(
      icon: Icons.settings,
      text: 'Configurar conta',
    );
  }
}
