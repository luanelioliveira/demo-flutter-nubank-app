import 'package:flutter/material.dart';

import '../my_card_app.dart';
import 'rewards_card_content.dart';

class RewardsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyCardApp(
      child: RewardsCardContent(),
    );
  }
}
