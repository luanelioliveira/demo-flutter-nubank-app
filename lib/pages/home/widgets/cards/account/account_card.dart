import 'package:flutter/material.dart';
import 'package:nubank_app/pages/home/widgets/cards/account/account_card_bottom.dart';
import 'package:nubank_app/pages/home/widgets/cards/account/account_card_content.dart';

import '../my_card_app.dart';

class AccountCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyCardApp(
      child: Column(
        children: <Widget>[AccountCardContent(), AccountCardBottom()],
      ),
    );
  }
}
