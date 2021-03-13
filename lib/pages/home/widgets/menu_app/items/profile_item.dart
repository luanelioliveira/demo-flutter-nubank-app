import 'package:flutter/material.dart';

import '../menu_app_item.dart';

class ProfileItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MenuAppItem(
      icon: Icons.person_outline,
      text: 'Perfil',
    );
  }
}
