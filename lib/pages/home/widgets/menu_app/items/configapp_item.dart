import 'package:flutter/material.dart';

import '../menu_app_item.dart';

class ConfigAppItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MenuAppItem(
      icon: Icons.phone_android,
      text: 'Configurações do app',
    );
  }
}
