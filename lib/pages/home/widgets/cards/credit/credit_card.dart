import 'package:flutter/material.dart';
import 'package:nubank_app/pages/home/widgets/cards/credit/credit_card_bottom.dart';
import 'package:nubank_app/pages/home/widgets/cards/credit/credit_card_content.dart';

import '../my_card_app.dart';

class CreditCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MyCardApp(
      child: Column(
        children: <Widget>[
          CreditCardContent(),
          CreditCardBottom(),
        ],
      ),
    );
  }
}
