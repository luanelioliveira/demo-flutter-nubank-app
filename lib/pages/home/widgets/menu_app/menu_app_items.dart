import 'package:flutter/material.dart';

import 'items/closeapp_item.dart';
import 'items/configaaccount_item.dart';
import 'items/configapp_item.dart';
import 'items/configcard_item.dart';
import 'items/helpme_item.dart';
import 'items/profile_item.dart';

class MenuAppItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: <Widget>[
          HelpMeItem(),
          ProfileItem(),
          ConfigAccountItem(),
          ConfigCardItem(),
          ConfigAppItem(),
          SizedBox(height: 20),
          CloseAppItem()
        ],
      ),
    );
  }
}
