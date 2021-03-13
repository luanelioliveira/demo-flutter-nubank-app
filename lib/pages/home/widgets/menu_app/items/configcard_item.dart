import 'package:flutter/material.dart';

import '../menu_app_item.dart';

class ConfigCardItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MenuAppItem(
      icon: Icons.credit_card,
      text: 'Configurar cartão',
    );
  }
}
